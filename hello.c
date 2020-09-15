#include <linux/init.h>
#include <linux/module.h>

MODULE_DESCRIPTION("Hello");
MODULE_LICENSE("GPL");

static int hello_init(void)
{
	printk("Hello world\n");
	return 0;
}

static void hello_exit(void)
{
	printk("Bye\n");
}

module_init(hello_init);
module_exit(hello_exit);
