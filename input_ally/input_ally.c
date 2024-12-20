// need to look into grub/grub-core/term/usb_keyboard.c

#include <grub/dl.h>
#include <grub/term.h>
#include <grub/misc.h>

static grub_err_t input_ally_init(void)
{
    // Initialize the device
    return GRUB_ERR_NONE;
}

static void input_ally_fini(void)
{
    // Clean up the device
}

GRUB_MOD_INIT(input_ally)
{
    input_ally_init();
}

GRUB_MOD_FINI(input_ally)
{
    input_ally_fini();
}
