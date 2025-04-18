#include <compiler.h>
#include <kernel/pseudo_ta.h>
#include <kernel/panic.h>
#include <mm/core_memprot.h>
#include <pta_task1.h>
#include <string.h>
#include <tee/cache.h>
#include <tee_api_defines.h>
#include <tee_api_types.h>
#include <trace.h>
#include <types_ext.h>

#define TA_NAME		"pta_task1.pta"

int task1_execution_time = 0;
extern long loop_result;
// extern int  previous_start_random;
// extern int  previous_end_random;
extern long mult_busy_loop(unsigned long execution_time);
extern int test_finish[CFG_TEE_CORE_NB_CORE][5];
extern int task1_exe_time[CFG_TEE_CORE_NB_CORE];
extern getCurrentTime_micro();
extern int get_current_core();
struct Random {
    int start_random;
    int end_random;
}; 
typedef struct {
	void *buffer;
	size_t size;
	uint32_t flags;
	/*
	 * Implementation-Defined
	 */
	int id;
	size_t alloced_size;
	void *shadow_buffer;
	int registered_fd;
	bool buffer_allocated;
} SHM_Proxy;;
struct Random *random_data;
static TEE_Result test_trace(uint32_t param_types __unused,
			TEE_Param params[TEE_NUM_PARAMS] __unused)
{
	IMSG("pseudo TA \"%s\" says \"Hello world function0!\"", TA_NAME);
	int task_start_time = getCurrentTime_micro();
	mult_busy_loop(task1_execution_time);  
	// if(previous_end_random==random_data->end_random &&previous_end_random==random_data->start_random){
	// 	IMSG("random data is the same");
	// }
	// previous_end_random=random_data->end_random;
	// previous_start_random=random_data->start_random;
	test_finish[get_current_core()][0] += 1;
	int task_end_time = getCurrentTime_micro();
	task1_exe_time[get_current_core()] = task_end_time - task_start_time;

	return TEE_SUCCESS;
}

static TEE_Result function2(uint32_t param_types __unused,
			TEE_Param params[TEE_NUM_PARAMS] __unused)
{
	IMSG("pseudo TA \"%s\" says \"Hello world function1!\"", TA_NAME);

	return TEE_SUCCESS;
}

static TEE_Result function3(uint32_t param_types __unused,
			TEE_Param params[TEE_NUM_PARAMS] __unused)
{
	IMSG("pseudo TA \"%s\" says \"Hello world function2!\"", TA_NAME);

	return TEE_SUCCESS;
}

static TEE_Result function4(uint32_t param_types __unused,
			TEE_Param params[TEE_NUM_PARAMS] __unused)
{
	IMSG("pseudo TA \"%s\" says \"Hello world function3!\"", TA_NAME);

	return TEE_SUCCESS;
}


/*
 * Trusted Application Entry Points
 */

static TEE_Result create_ta(void)
{
	DMSG("create entry point for pseudo TA \"%s\"", TA_NAME);
	return TEE_SUCCESS;
}

static void destroy_ta(void)
{
	DMSG("destroy entry point for pseudo ta \"%s\"", TA_NAME);
}


static TEE_Result open_session(uint32_t nParamTypes,
		TEE_Param pParams[TEE_NUM_PARAMS],
		void **ppSessionContext __unused)
{

	DMSG("open entry point for pseudo ta \"%s\"", TA_NAME);
	struct secure_task_params *curr_task_params = NULL;
	curr_task_params = (struct secure_task_params*)pParams[0].memref.buffer;
	task1_execution_time = curr_task_params->execution_time;
	//SHM_Proxy *shm_proxy = (SHM_Proxy *)curr_task_params->cstm_param_addr;
	//random_data = (struct Random *)shm_proxy->buffer;
	return TEE_SUCCESS;
}

static void close_session(void *pSessionContext __unused)
{
	DMSG("close entry point for pseudo ta \"%s\"", TA_NAME);
}


extern int debug_thread_index;


static TEE_Result invoke_command(void *pSessionContext __unused,
		uint32_t nCommandID, uint32_t nParamTypes,
		TEE_Param pParams[TEE_NUM_PARAMS])
{

	switch (nCommandID) {
	case PTA_TASK1_CMD_TRACE:
		return test_trace(nParamTypes, pParams);
	case 2:
		return function2(nParamTypes, pParams);
	case 3:
		return function3(nParamTypes, pParams);
	case 4:		
		return function3(nParamTypes, pParams);
	default:
		break;
	}
	return TEE_ERROR_BAD_PARAMETERS;
}

pseudo_ta_register(.uuid = PTA_TASK1_UUID, .name = TA_NAME,
		   .flags = PTA_DEFAULT_FLAGS | TA_FLAG_SECURE_DATA_PATH |
			    TA_FLAG_DEVICE_ENUM | TA_FLAG_CONCURRENT,
		   .create_entry_point = create_ta,
		   .destroy_entry_point = destroy_ta,
		   .open_session_entry_point = open_session,
		   .close_session_entry_point = close_session,
		   .invoke_command_entry_point = invoke_command);
