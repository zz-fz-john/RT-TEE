/* SPDX-License-Identifier: BSD-2-Clause */
/*
 * Copyright (c) 2014, STMicroelectronics International N.V.
 * Copyright (c) 2016-2017, Linaro Limited
 */

#ifndef KERNEL_THREAD_H
#define KERNEL_THREAD_H

#ifndef ASM
#include <arm.h>
#include <types_ext.h>
#include <compiler.h>
#include <kernel/mutex.h>
#include <kernel/vfp.h>
#include <mm/pgt_cache.h>
#endif

#define THREAD_ID_0		0
#define THREAD_ID_INVALID	-1

#define THREAD_RPC_MAX_NUM_PARAMS	4

#ifndef ASM

#ifdef ARM64
/*
 * struct thread_core_local needs to have alignment suitable for a stack
 * pointer since SP_EL1 points to this
 */
#define THREAD_CORE_LOCAL_ALIGNED __aligned(16)
#else
#define THREAD_CORE_LOCAL_ALIGNED __aligned(8)
#endif

struct thread_core_local {//绑定task到thread上
#ifdef ARM32
	uint32_t r[2];
	paddr_t sm_pm_ctx_phys;
#endif
#ifdef ARM64
	uint64_t x[4];			// this is used for thread suspending, in order to temp store context for future recovery
#endif
	vaddr_t tmp_stack_va_end;
	int curr_thread;
	uint32_t flags;
	vaddr_t abt_stack_va_end;
	int curr_task;
#ifdef CFG_TEE_CORE_DEBUG
	unsigned int locked_count; /* Number of spinlocks held */
#endif
} THREAD_CORE_LOCAL_ALIGNED;

struct thread_vector_table {
	uint32_t std_smc_entry;
	uint32_t fast_smc_entry;
	uint32_t cpu_on_entry;
	uint32_t cpu_off_entry;
	uint32_t cpu_resume_entry;
	uint32_t cpu_suspend_entry;
	uint32_t fiq_entry;
	uint32_t system_off_entry;
	uint32_t system_reset_entry;
};
extern struct thread_vector_table thread_vector_table;

struct thread_specific_data {
	TAILQ_HEAD(, tee_ta_session) sess_stack;
	struct tee_ta_ctx *ctx;
	struct pgt_cache pgt_cache;
	void *rpc_fs_payload;
	struct mobj *rpc_fs_payload_mobj;
	size_t rpc_fs_payload_size;
};

struct thread_user_vfp_state {
	struct vfp_state vfp;
	bool lazy_saved;
	bool saved;
};

#ifdef ARM32
struct thread_smc_args {
	uint32_t a0;	/* SMC function ID */
	uint32_t a1;	/* Parameter */
	uint32_t a2;	/* Parameter */
	uint32_t a3;	/* Thread ID when returning from RPC */
	uint32_t a4;	/* Not used */
	uint32_t a5;	/* Not used */
	uint32_t a6;	/* Not used */
	uint32_t a7;	/* Hypervisor Client ID */
};
#endif /*ARM32*/
#ifdef ARM64
struct thread_smc_args {
	uint64_t a0;	/* SMC function ID */
	uint64_t a1;	/* Parameter */
	uint64_t a2;	/* Parameter */
	uint64_t a3;	/* Thread ID when returning from RPC */
	uint64_t a4;	/* Not used */
	uint64_t a5;	/* Not used */
	uint64_t a6;	/* Not used */
	uint64_t a7;	/* Hypervisor Client ID */
};
#endif /*ARM64*/

#ifdef ARM32
struct thread_abort_regs {
	uint32_t usr_sp;
	uint32_t usr_lr;
	uint32_t pad;
	uint32_t spsr;
	uint32_t elr;
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
	uint32_t ip;
};
#endif /*ARM32*/
#ifdef ARM64
struct thread_abort_regs {
	uint64_t x0;	/* r0_usr */
	uint64_t x1;	/* r1_usr */
	uint64_t x2;	/* r2_usr */
	uint64_t x3;	/* r3_usr */
	uint64_t x4;	/* r4_usr */
	uint64_t x5;	/* r5_usr */
	uint64_t x6;	/* r6_usr */
	uint64_t x7;	/* r7_usr */
	uint64_t x8;	/* r8_usr */
	uint64_t x9;	/* r9_usr */
	uint64_t x10;	/* r10_usr */
	uint64_t x11;	/* r11_usr */
	uint64_t x12;	/* r12_usr */
	uint64_t x13;	/* r13/sp_usr */
	uint64_t x14;	/* r14/lr_usr */
	uint64_t x15;
	uint64_t x16;
	uint64_t x17;
	uint64_t x18;
	uint64_t x19;
	uint64_t x20;
	uint64_t x21;
	uint64_t x22;
	uint64_t x23;
	uint64_t x24;
	uint64_t x25;
	uint64_t x26;
	uint64_t x27;
	uint64_t x28;
	uint64_t x29;
	uint64_t x30;
	uint64_t elr;
	uint64_t spsr;
	uint64_t sp_el0;
};
#endif /*ARM64*/

#ifdef ARM32
struct thread_svc_regs {
	uint32_t spsr;
	uint32_t r0;
	uint32_t r1;
	uint32_t r2;
	uint32_t r3;
	uint32_t r4;
	uint32_t r5;
	uint32_t r6;
	uint32_t r7;
	uint32_t lr;
};
#endif /*ARM32*/
#ifdef ARM64
struct thread_svc_regs {
	uint64_t elr;
	uint64_t spsr;
	uint64_t x0;	/* r0_usr */
	uint64_t x1;	/* r1_usr */
	uint64_t x2;	/* r2_usr */
	uint64_t x3;	/* r3_usr */
	uint64_t x4;	/* r4_usr */
	uint64_t x5;	/* r5_usr */
	uint64_t x6;	/* r6_usr */
	uint64_t x7;	/* r7_usr */
	uint64_t x8;	/* r8_usr */
	uint64_t x9;	/* r9_usr */
	uint64_t x10;	/* r10_usr */
	uint64_t x11;	/* r11_usr */
	uint64_t x12;	/* r12_usr */
	uint64_t x13;	/* r13/sp_usr */
	uint64_t x14;	/* r14/lr_usr */
	uint64_t x30;
	uint64_t sp_el0;
	uint64_t pad;
} __aligned(16);
#endif /*ARM64*/
#endif /*ASM*/

#ifndef ASM
typedef void (*thread_smc_handler_t)(struct thread_smc_args *args);
typedef void (*thread_nintr_handler_t)(void);
typedef unsigned long (*thread_pm_handler_t)(unsigned long a0,
					     unsigned long a1);
struct thread_handlers {
	/*
	 * stdcall and fastcall are called as regular functions and
	 * normal ARM Calling Convention applies. Return values are passed
	 * args->param{1-3} and forwarded into r0-r3 when returned to
	 * non-secure world.
	 *
	 * stdcall handles calls which can be preemted from non-secure
	 * world. This handler is executed with a large stack.
	 *
	 * fastcall handles fast calls which can't be preemted. This
	 * handler is executed with a limited stack. This handler must not
	 * cause any aborts or reenenable native interrupts which are
	 * temporarily masked while executing this handler.
	 *
	 * TODO investigate if we should execute fastcalls and native interrupts
	 * on different stacks allowing native interrupts to be enabled during
	 * a fastcall.
	 */
	thread_smc_handler_t std_smc;
	thread_smc_handler_t fast_smc;

	/*
	 * fiq is called as a regular function and normal ARM Calling
	 * Convention applies.
	 *
	 * This handler handles native interrupts which can't be preemted. This
	 * handler is executed with a limited stack. This handler must not cause
	 * any aborts or reenenable native interrupts which are temporarily
	 * masked while executing this handler.
	 */
	thread_nintr_handler_t nintr;

	/*
	 * Power management handlers triggered from ARM Trusted Firmware.
	 * Not used when using internal monitor.
	 */
	thread_pm_handler_t cpu_on;
	thread_pm_handler_t cpu_off;
	thread_pm_handler_t cpu_suspend;
	thread_pm_handler_t cpu_resume;
	thread_pm_handler_t system_off;
	thread_pm_handler_t system_reset;
};
void thread_init_primary(const struct thread_handlers *handlers);
void thread_init_per_cpu(void);

struct thread_core_local *thread_get_core_local(void);

/*
 * Sets the stacks to be used by the different threads. Use THREAD_ID_0 for
 * first stack, THREAD_ID_0 + 1 for the next and so on.
 *
 * Returns true on success and false on errors.
 */
bool thread_init_stack(uint32_t stack_id, vaddr_t sp);

/*
 * Initializes a thread to be used during boot
 */
void thread_init_boot_thread(void);

/*
 * Clears the current thread id
 * Only supposed to be used during initialization.
 */
void thread_clr_boot_thread(void);

/*
 * Returns current thread id.
 */
int thread_get_id(void);

/*
 * Returns current thread id, return -1 on failure.
 */
int thread_get_id_may_fail(void);

/* Returns Thread Specific Data (TSD) pointer. */
struct thread_specific_data *thread_get_tsd(void);

/*
 * Sets foreign interrupts status for current thread, must only be called
 * from an active thread context.
 *
 * enable == true  -> enable foreign interrupts
 * enable == false -> disable foreign interrupts
 */
void thread_set_foreign_intr(bool enable);


/*
 * Restores the foreign interrupts status (in CPSR) for current thread, must
 * only be called from an active thread context.
 */
void thread_restore_foreign_intr(void);



/*
 * Sets native interrupts status for current thread, must only be called
 * from an active thread context.
 *
 * enable == true  -> enable native interrupts
 * enable == false -> disable native interrupts
 */
void thread_set_native_intr(bool enable);

/*
 * Defines the bits for the exception mask used the the
 * thread_*_exceptions() functions below.
 * These definitions are compatible with both ARM32 and ARM64.
 */
#if defined(CFG_ARM_GICV3)
#define THREAD_EXCP_FOREIGN_INTR	(ARM32_CPSR_F >> ARM32_CPSR_F_SHIFT)
#define THREAD_EXCP_NATIVE_INTR		(ARM32_CPSR_I >> ARM32_CPSR_F_SHIFT)
#else
#define THREAD_EXCP_FOREIGN_INTR	(ARM32_CPSR_I >> ARM32_CPSR_F_SHIFT)
#define THREAD_EXCP_NATIVE_INTR		(ARM32_CPSR_F >> ARM32_CPSR_F_SHIFT)
#endif
#define THREAD_EXCP_ALL			(THREAD_EXCP_FOREIGN_INTR	\
					| THREAD_EXCP_NATIVE_INTR	\
					| (ARM32_CPSR_A >> ARM32_CPSR_F_SHIFT))

/*
 * thread_get_exceptions() - return current exception mask
 */
uint32_t thread_get_exceptions(void);

/*
 * thread_set_exceptions() - set exception mask
 * @exceptions: exception mask to set
 *
 * Any previous exception mask is replaced by this exception mask, that is,
 * old bits are cleared and replaced by these.
 */
void thread_set_exceptions(uint32_t exceptions);

/*
 * thread_mask_exceptions() - Masks (disables) specified asynchronous exceptions
 * @exceptions	exceptions to mask
 * @returns old exception state
 */
uint32_t thread_mask_exceptions(uint32_t exceptions);

/*
 * thread_unmask_exceptions() - Unmasks asynchronous exceptions
 * @state	Old asynchronous exception state to restore (returned by
 *		thread_mask_exceptions())
 */
void thread_unmask_exceptions(uint32_t state);


static inline bool thread_foreign_intr_disabled(void)
{
	return !!(thread_get_exceptions() & THREAD_EXCP_FOREIGN_INTR);
}

#ifdef CFG_WITH_VFP
/*
 * thread_kernel_enable_vfp() - Temporarily enables usage of VFP
 *
 * Foreign interrupts are masked while VFP is enabled. User space must not be
 * entered before thread_kernel_disable_vfp() has been called to disable VFP
 * and restore the foreign interrupt status.
 *
 * This function may only be called from an active thread context and may
 * not be called again before thread_kernel_disable_vfp() has been called.
 *
 * VFP state is saved as needed.
 *
 * Returns a state variable that should be passed to
 * thread_kernel_disable_vfp().
 */
uint32_t thread_kernel_enable_vfp(void);

/*
 * thread_kernel_disable_vfp() - Disables usage of VFP
 * @state:	state variable returned by thread_kernel_enable_vfp()
 *
 * Disables usage of VFP and restores foreign interrupt status after a call to
 * thread_kernel_enable_vfp().
 *
 * This function may only be called after a call to
 * thread_kernel_enable_vfp().
 */
void thread_kernel_disable_vfp(uint32_t state);

/*
 * thread_kernel_save_vfp() - Saves kernel vfp state if enabled
 */
void thread_kernel_save_vfp(void);

/*
 * thread_kernel_save_vfp() - Restores kernel vfp state
 */
void thread_kernel_restore_vfp(void);

/*
 * thread_user_enable_vfp() - Enables vfp for user mode usage
 * @uvfp:	pointer to where to save the vfp state if needed
 */
void thread_user_enable_vfp(struct thread_user_vfp_state *uvfp);
#else /*CFG_WITH_VFP*/
static inline void thread_kernel_save_vfp(void)
{
}

static inline void thread_kernel_restore_vfp(void)
{
}
#endif /*CFG_WITH_VFP*/

/*
 * thread_user_save_vfp() - Saves the user vfp state if enabled
 */
#ifdef CFG_WITH_VFP
void thread_user_save_vfp(void);
#else
static inline void thread_user_save_vfp(void)
{
}
#endif

/*
 * thread_user_clear_vfp() - Clears the vfp state
 * @uvfp:	pointer to saved state to clear
 */
#ifdef CFG_WITH_VFP
void thread_user_clear_vfp(struct thread_user_vfp_state *uvfp);
#else
static inline void thread_user_clear_vfp(
			struct thread_user_vfp_state *uvfp __unused)
{
}
#endif


/*
 * thread_enter_user_mode() - Enters user mode
 * @a0:		Passed in r/x0 for user_func
 * @a1:		Passed in r/x1 for user_func
 * @a2:		Passed in r/x2 for user_func
 * @a3:		Passed in r/x3 for user_func
 * @user_sp:	Assigned sp value in user mode
 * @user_func:	Function to execute in user mode
 * @is_32bit:   True if TA should execute in Aarch32, false if Aarch64
 * @exit_status0: Pointer to opaque exit staus 0
 * @exit_status1: Pointer to opaque exit staus 1
 *
 * This functions enters user mode with the argument described above,
 * @exit_status0 and @exit_status1 are filled in by thread_unwind_user_mode()
 * when returning back to the caller of this function through an exception
 * handler.
 *
 * @Returns what's passed in "ret" to thread_unwind_user_mode()
 */
uint32_t thread_enter_user_mode(unsigned long a0, unsigned long a1,
		unsigned long a2, unsigned long a3, unsigned long user_sp,
		unsigned long entry_func, bool is_32bit,
		uint32_t *exit_status0, uint32_t *exit_status1);

/*
 * thread_unwind_user_mode() - Unwinds kernel stack from user entry
 * @ret:	Value to return from thread_enter_user_mode()
 * @exit_status0: Exit status 0
 * @exit_status1: Exit status 1
 *
 * This is the function that exception handlers can return into
 * to resume execution in kernel mode instead of user mode.
 *
 * This function is closely coupled with thread_enter_user_mode() since it
 * need to restore registers saved by thread_enter_user_mode() and when it
 * returns make it look like thread_enter_user_mode() just returned. It is
 * expected that the stack pointer is where thread_enter_user_mode() left
 * it. The stack will be unwound and the function will return to where
 * thread_enter_user_mode() was called from.  Exit_status0 and exit_status1
 * are filled in the corresponding pointers supplied to
 * thread_enter_user_mode().
 */
void thread_unwind_user_mode(uint32_t ret, uint32_t exit_status0,
		uint32_t exit_status1);

#ifdef ARM64
/*
 * thread_get_saved_thread_sp() - Returns the saved sp of current thread
 *
 * When switching from the thread stack pointer the value is stored
 * separately in the current thread context. This function returns this
 * saved value.
 *
 * @returns stack pointer
 */
vaddr_t thread_get_saved_thread_sp(void);
// FIXME: rd put thread_alloc_and_run here to make it visible to others
void thread_alloc_and_run(struct thread_smc_args *args);
#endif /*ARM64*/

/*
 * Provides addresses and size of kernel code that must be mapped while in
 * user mode.
 */
#ifdef CFG_CORE_UNMAP_CORE_AT_EL0
void thread_get_user_kcode(struct mobj **mobj, size_t *offset,
			  vaddr_t *va, size_t *sz);
#else
static inline void thread_get_user_kcode(struct mobj **mobj, size_t *offset,
					 vaddr_t *va, size_t *sz)
{
	*mobj = NULL;
	*offset = 0;
	*va = 0;
	*sz = 0;
}
#endif

/*
 * Provides addresses and size of kernel (rw) data that must be mapped
 * while in user mode.
 */
#if defined(CFG_CORE_UNMAP_CORE_AT_EL0) && \
	defined(CFG_CORE_WORKAROUND_SPECTRE_BP_SEC) && defined(ARM64)
void thread_get_user_kdata(struct mobj **mobj, size_t *offset,
			  vaddr_t *va, size_t *sz);
#else
static inline void thread_get_user_kdata(struct mobj **mobj, size_t *offset,
					 vaddr_t *va, size_t *sz)
{
	*mobj = NULL;
	*offset = 0;
	*va = 0;
	*sz = 0;
}
#endif

/*
 * Returns the start address (bottom) of the stack for the current thread,
 * zero if there is no current thread.
 */
vaddr_t thread_stack_start(void);


/* Returns the stack size for the current thread */
size_t thread_stack_size(void);

bool thread_is_in_normal_mode(void);

/*
 * Returns true if previous exeception also was in abort mode.
 *
 * Note: it's only valid to call this function from an abort exception
 * handler before interrupts has been re-enabled.
 */
bool thread_is_from_abort_mode(void);

/*
 * Disables and empties the prealloc RPC cache one reference at a time. If
 * all threads are idle this function returns true and a cookie of one shm
 * object which was removed from the cache. When the cache is empty *cookie
 * is set to 0 and the cache is disabled else a valid cookie value. If one
 * thread isn't idle this function returns false.
 */
bool thread_disable_prealloc_rpc_cache(uint64_t *cookie);

/*
 * Enabled the prealloc RPC cache. If all threads are idle the cache is
 * enabled and this function returns true. If one thread isn't idle this
 * function return false.
 */
bool thread_enable_prealloc_rpc_cache(void);

/**
 * Allocates data for payload buffers.
 *
 * @size:	size in bytes of payload buffer
 *
 * @returns	mobj that describes allocated buffer or NULL on error
 */
struct mobj *thread_rpc_alloc_payload(size_t size);

/**
 * Free physical memory previously allocated with thread_rpc_alloc_payload()
 *
 * @mobj:	mobj that describes the buffer
 */
void thread_rpc_free_payload(struct mobj *mobj);


struct thread_param_memref {
	size_t offs;
	size_t size;
	struct mobj *mobj;
};

struct thread_param_value {
	uint64_t a;
	uint64_t b;
	uint64_t c;
};

/*
 * Note that there's some arithmetics done on the value so it's important
 * to keep in IN, OUT, INOUT order.
 */
enum thread_param_attr {
	THREAD_PARAM_ATTR_NONE = 0,
	THREAD_PARAM_ATTR_VALUE_IN,
	THREAD_PARAM_ATTR_VALUE_OUT,
	THREAD_PARAM_ATTR_VALUE_INOUT,
	THREAD_PARAM_ATTR_MEMREF_IN,
	THREAD_PARAM_ATTR_MEMREF_OUT,
	THREAD_PARAM_ATTR_MEMREF_INOUT,
};

struct thread_param {
	enum thread_param_attr attr;
	union {
		struct thread_param_memref memref;
		struct thread_param_value value;
	} u;
};

#define THREAD_PARAM_MEMREF(_direction, _mobj, _offs, _size) \
	(struct thread_param){ \
		.attr = THREAD_PARAM_ATTR_MEMREF_ ## _direction, .u.memref = { \
		.mobj = (_mobj), .offs = (_offs), .size = (_size) } \
	}

#define THREAD_PARAM_VALUE(_direction, _a, _b, _c) \
	(struct thread_param){ \
		.attr = THREAD_PARAM_ATTR_VALUE_ ## _direction, .u.value = { \
		.a = (_a), .b = (_b), .c = (_c) } \
	}

/**
 * Does an RPC using a preallocated argument buffer
 * @cmd: RPC cmd
 * @num_params: number of parameters
 * @params: RPC parameters
 * @returns RPC return value
 */
uint32_t thread_rpc_cmd(uint32_t cmd, size_t num_params,
		struct thread_param *params);

unsigned long thread_smc(unsigned long func_id, unsigned long a1,
			 unsigned long a2, unsigned long a3);

/**
 * Allocate data for payload buffers.
 * Buffer is exported to user mode applications.
 *
 * @size:	size in bytes of payload buffer
 *
 * @returns	mobj that describes allocated buffer or NULL on error
 */
struct mobj *thread_rpc_alloc_global_payload(size_t size);

/**
 * Free physical memory previously allocated with
 * thread_rpc_alloc_global_payload()
 *
 * @mobj:	mobj that describes the buffer
 */
void thread_rpc_free_global_payload(struct mobj *mobj);

#endif /*ASM*/

#endif /*KERNEL_THREAD_H*/

