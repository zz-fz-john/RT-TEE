/* SPDX-License-Identifier: BSD-2-Clause */
/*
 * Copyright (c) 2016, Linaro Limited
 * Copyright (c) 2014, STMicroelectronics International N.V.
 */

#ifndef THREAD_PRIVATE_H
#define THREAD_PRIVATE_H

#ifndef ASM

#include <mm/core_mmu.h>
#include <mm/pgt_cache.h>
#include <kernel/vfp.h>
#include <kernel/mutex.h>
#include <kernel/thread.h>
#include <sys/queue.h>

enum thread_state {
	THREAD_STATE_FREE,
	THREAD_STATE_SUSPENDED,
	THREAD_STATE_ACTIVE,
};

#ifdef ARM32
struct thread_ctx_regs {
	uint32_t r0;
	uint32_t r1;
	uint32_t r2;
	uint32_t r3;
	uint32_t r4;
	uint32_t r5;
	uint32_t r6;
	uint32_t r7;
	uint32_t r8;
	uint32_t r9;
	uint32_t r10;
	uint32_t r11;
	uint32_t r12;
	uint32_t usr_sp;
	uint32_t usr_lr;
	uint32_t svc_spsr;
	uint32_t svc_sp;
	uint32_t svc_lr;
	uint32_t pc;
	uint32_t cpsr;
};
#endif /*ARM32*/

#ifdef ARM64
struct thread_ctx_regs {
	uint64_t sp;
	uint64_t pc;
	uint64_t cpsr;
	uint64_t x[31];
};
#endif /*ARM64*/

#ifdef ARM64
struct thread_user_mode_rec {
	uint64_t exit_status0_ptr;
	uint64_t exit_status1_ptr;
	uint64_t x[31 - 19]; /* x19..x30 */
};
#endif /*ARM64*/

#ifdef CFG_WITH_VFP
struct thread_vfp_state {
	bool ns_saved;
	bool sec_saved;
	bool sec_lazy_saved;
	struct vfp_state ns;
	struct vfp_state sec;
	struct thread_user_vfp_state *uvfp;
};

#endif /*CFG_WITH_VFP*/

struct thread_ctx {
	struct thread_ctx_regs regs;
	enum thread_state state;
	vaddr_t stack_va_end;
	uint32_t hyp_clnt_id;
	uint32_t flags;
	struct core_mmu_user_map user_map;
	bool have_user_map;
#ifdef ARM64
	vaddr_t kern_sp;	/* Saved kernel SP during user TA execution */
#endif
#ifdef CFG_WITH_VFP
	struct thread_vfp_state vfp_state;
#endif
	void *rpc_arg;
	struct mobj *rpc_mobj;
	struct thread_specific_data tsd;
	//struct secure_task task;  //task information used for seucre tasks scheduling
};

#define SECURE_TASK_FREE 0 		//secure_task struct can be used 
#define SECURE_TASK_OCCUPIED 1  //secure_task struct cannot be used
#define SECURE_TASK_FINISHED 0	//secure task has finished	
#define SECURE_TASK_RUNNING 1	//secure task is running
typedef unsigned long s_time_t;
//8 byte alignment
//job 是指一个task的一个实例，一个task可能有多个job，表示任务的一次执行
struct secure_task{
	struct thread_ctx_regs saved_regs;  //this is used to save regs during context switch 
	struct tee_ta_ctx *curr_tee_ta_ctx; //this is initialized during open session, this is used to use busy memory to decide whether task has been finished
	uint32_t session_id; 				//this is used to invoke a ta, this initialized during open session
	int curr_thread; 					// thread index of current task
	int taskUid;						//this is the secure_task index in secure_tasks
	int task_state;						//indicate whether task has been finished, this will indicate whether to perform thread context saving


	s_time_t period;					// the period of the task, we assume the deadline is release + period
	//long budget;						// well, for the current task model, we don't have the concept of the 
	unsigned int priority;				// the priority of the task, this will be set by the scheduling algorithm such as RM,DM
	unsigned int numOfJobReleased;      // captures how many jobs this task release
	unsigned int numOfJobCompleted;		// capture how many jobs this task has finished
	unsigned int numOfJobDlMissed;      // catpures how many jobs miss their deadline
	s_time_t lastCompletionOfJob;		// the last time a job for this task is completed
	s_time_t lastReleaseOfJob;          // this variable stores the time of the job 
	int coreNum;  						// the core number the task is pinned to, this is only useful in partitioned scheduling

	// PTA call number 
	int PtaParam; 						// FIXME: this should be individual PTA, it is a lot more cleaner 
	long long loopCounter;					// FIXME: this should be removed, because the context should be resumed, instead of loading this counter
	long long whole_loop;						// overall loops of the whole task
	unsigned long execution_time;
	//link list pointer of this task
	TAILQ_ENTRY(secure_task) tail_queue_entity;
	int occupied;						//this indicates the state of secure_task struct
	int processing_core;				//the core id processing current task, -1 means no core are is processing current task
	int cpu;							//the core on which this task will run
	struct vfp_state saved_fp_regs;		//this is used to save float point registers during context switch.
};

TAILQ_HEAD(secure_task_tq_head, secure_task);



#endif /*ASM*/



#ifdef ARM64
#ifdef CFG_WITH_VFP
#define THREAD_VFP_STATE_SIZE				\
	(16 + (16 * 32 + 16) * 2 + 16)
#else
#define THREAD_VFP_STATE_SIZE				0
#endif
#endif /*ARM64*/

/* Describes the flags field of struct thread_core_local */
#define THREAD_CLF_SAVED_SHIFT			4
#define THREAD_CLF_CURR_SHIFT			0
#define THREAD_CLF_MASK				0xf
#define THREAD_CLF_TMP_SHIFT			0
#define THREAD_CLF_ABORT_SHIFT			1
#define THREAD_CLF_IRQ_SHIFT			2
#define THREAD_CLF_FIQ_SHIFT			3

#define THREAD_CLF_TMP				(1 << THREAD_CLF_TMP_SHIFT)
#define THREAD_CLF_ABORT			(1 << THREAD_CLF_ABORT_SHIFT)
#define THREAD_CLF_IRQ				(1 << THREAD_CLF_IRQ_SHIFT)
#define THREAD_CLF_FIQ				(1 << THREAD_CLF_FIQ_SHIFT)

#ifndef ASM
extern const void *stack_tmp_export;
extern const uint32_t stack_tmp_stride;
extern struct thread_ctx threads[];
extern thread_smc_handler_t thread_std_smc_handler_ptr;
extern thread_nintr_handler_t thread_nintr_handler_ptr;
extern thread_pm_handler_t thread_cpu_on_handler_ptr;
extern thread_pm_handler_t thread_cpu_off_handler_ptr;
extern thread_pm_handler_t thread_cpu_suspend_handler_ptr;
extern thread_pm_handler_t thread_cpu_resume_handler_ptr;
extern thread_pm_handler_t thread_system_off_handler_ptr;
extern thread_pm_handler_t thread_system_reset_handler_ptr;


/*
 * During boot note the part of code and data that needs to be mapped while
 * in user mode. The provided address and size have to be page aligned.
 * Note that the code and data will be mapped at the lowest possible
 * addresses available for user space (see core_mmu_get_user_va_range()).
 */
extern long thread_user_kcode_offset;

/*
 * Initializes VBAR for current CPU (called by thread_init_per_cpu()
 */
void thread_init_vbar(vaddr_t addr);

void thread_excp_vect(void);
void thread_excp_vect_workaround(void);
void thread_excp_vect_workaround_a15(void);
void thread_excp_vect_end(void);

/* Handles a stdcall, r0-r7 holds the parameters */
void thread_std_smc_entry(void);

/*
 * Resumes execution of currently active thread by restoring context and
 * jumping to the instruction where to continue execution.
 *
 * Arguments supplied by non-secure world will be copied into the saved
 * context of the current thread if THREAD_FLAGS_COPY_ARGS_ON_RETURN is set
 * in the flags field in the thread context.
 */
void thread_resume(struct thread_ctx_regs *regs);

void rt_tee_thread_resume(struct thread_ctx_regs *saved_thread_regs, int thread_to_resume);

uint32_t __thread_enter_user_mode(unsigned long a0, unsigned long a1,
		unsigned long a2, unsigned long a3, unsigned long user_sp,
		unsigned long user_func, unsigned long spsr,
		uint32_t *exit_status0, uint32_t *exit_status1);

/*
 * Private functions made available for thread_asm.S
 */

/* Returns the temp stack for current CPU */
void *thread_get_tmp_sp(void);

/*
 * Marks the current thread as suspended. And updated the flags
 * for the thread context (see thread resume for use of flags).
 * Returns thread index of the thread that was suspended.
 */
int thread_state_suspend(uint32_t flags, uint32_t cpsr, vaddr_t pc);

/*
 * Marks the current thread as free.
 */
void thread_state_free(void);

/* Returns a pointer to the saved registers in current thread context. */
struct thread_ctx_regs *thread_get_ctx_regs(void);

#ifdef ARM32
/* Sets sp for abort mode */
void thread_set_abt_sp(vaddr_t sp);

/* Sets sp for undefined mode */
void thread_set_und_sp(vaddr_t sp);

/* Sets sp for irq mode */
void thread_set_irq_sp(vaddr_t sp);

/* Sets sp for fiq mode */
void thread_set_fiq_sp(vaddr_t sp);
#endif /*ARM32*/

/* Handles a fast SMC by dispatching it to the registered fast SMC handler */
void thread_handle_fast_smc(struct thread_smc_args *args);

/* Handles a std SMC by dispatching it to the registered std SMC handler */
void thread_handle_std_smc(struct thread_smc_args *args);

/*
 * Suspends current thread and temorarily exits to non-secure world.
 * This function returns later when non-secure world returns.
 *
 * The purpose of this function is to request services from non-secure
 * world.
 */
#define THREAD_RPC_NUM_ARGS     6
void thread_rpc(uint32_t rv[THREAD_RPC_NUM_ARGS]);

/* Checks stack canaries */
void thread_check_canaries(void);

void __thread_std_smc_entry(struct thread_smc_args *args);

#endif /*ASM*/

#endif /*THREAD_PRIVATE_H*/
