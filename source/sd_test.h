#ifndef _SD_TEST_
#define _SD_TEST_

#include <stdio.h>
#include "fsl_debug_console.h"
#include "pin_mux.h"
#include "clock_config.h"
#include "board.h"
#include "fsl_sd.h"
#include "sdmmc_config.h"
#include "fsl_sysmpu.h"

/*******************************************************************************
 * Definitions
 ******************************************************************************/


/*! @brief Data block count accessed in card */
#define DATA_BLOCK_COUNT (100U)
/*! @brief Start data block number accessed in card */
#define DATA_BLOCK_START (0U)
/*! @brief Data buffer size. */
#define DATA_BUFFER_SIZE (FSL_SDMMC_DEFAULT_BLOCK_SIZE * DATA_BLOCK_COUNT)

/*******************************************************************************
 * Variables
 ******************************************************************************/

/*! @brief Card descriptor. */
extern sd_card_t g_sd;

/* @brief decription about the read/write buffer
 * The size of the read/write buffer should be a multiple of 512, since SDHC/SDXC card uses 512-byte fixed
 * block length and this driver example is enabled with a SDHC/SDXC card.If you are using a SDSC card, you
 * can define the block length by yourself if the card supports partial access.
 * The address of the read/write buffer should align to the specific DMA data buffer address align value if
 * DMA transfer is used, otherwise the buffer address is not important.
 * At the same time buffer address/size should be aligned to the cache line size if cache is supported.
 */
/*! @brief Data written to the card */
extern uint8_t g_dataWrite[];
/*! @brief Data read from the card */
extern uint8_t g_dataRead[];

/*! @brief SD card detect flag  */
static volatile bool s_cardInserted = false;

int sd_test(void);

int sd_run(void);
#endif
