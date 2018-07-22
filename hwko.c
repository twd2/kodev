#include <linux/init.h>
#include <linux/module.h>

MODULE_LICENSE("Dual BSD/GPL");

static int hwko_init(void)
{
  printk(KERN_INFO "hello, world\n");
  for (;;);
  return 0;
}

static void hwko_exit(void)
{
  printk(KERN_INFO "goodbye, world\n");
}

module_init(hwko_init);
module_exit(hwko_exit);
