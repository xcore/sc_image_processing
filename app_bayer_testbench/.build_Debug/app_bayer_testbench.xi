# 1 "../src/app_bayer_testbench.xc"
# 6 "../src/app_bayer_testbench.xc"
# 1 "xs1.h" 1 3
# 19 "xs1.h" 3
# 1 "timer.h" 1 3
# 33 "timer.h" 3
void delay_ticks(unsigned ticks);
# 40 "timer.h" 3
void delay_ticks_longlong(unsigned long long ticks);
# 46 "timer.h" 3
inline void delay_seconds(unsigned int delay) {
  delay_ticks_longlong( 100U  * 1000000 * (unsigned long long)delay);
}
# 54 "timer.h" 3
inline void delay_milliseconds(unsigned delay) {
  delay_ticks_longlong( 100U  * 1000 * (unsigned long long)delay);
}
# 62 "timer.h" 3
inline void delay_microseconds(unsigned delay) {
  delay_ticks_longlong( 100U  * (unsigned long long)delay);
}
# 20 "xs1.h" 2 3
# 33 "xs1.h" 3
# 1 "xs1_g4000b-512.h" 1 3
# 34 "xs1.h" 2 3
# 39 "xs1.h" 3
# 1 "xs1_user.h" 1 3
# 20 "xs1_user.h" 3
# 1 "xs1b_user.h" 1 3
# 21 "xs1_user.h" 2 3
# 40 "xs1.h" 2 3
# 1 "xs1_kernel.h" 1 3
# 20 "xs1_kernel.h" 3
# 1 "xs1b_kernel.h" 1 3
# 21 "xs1_kernel.h" 2 3
# 41 "xs1.h" 2 3
# 1 "xs1_registers.h" 1 3
# 20 "xs1_registers.h" 3
# 1 "xs1b_registers.h" 1 3
# 29 "xs1b_registers.h" 3
# 1 "xs1_g_registers.h" 1 3
# 30 "xs1b_registers.h" 2 3
# 1 "xs1_l_registers.h" 1 3
# 31 "xs1b_registers.h" 2 3
# 21 "xs1_registers.h" 2 3
# 42 "xs1.h" 2 3
# 1 "xs1_clock.h" 1 3
# 43 "xs1.h" 2 3
# 72 "xs1.h" 3
void configure_in_port_handshake(void port p, in port readyin,
                                 out port readyout,  __clock_t  clk);
# 101 "xs1.h" 3
void configure_out_port_handshake(void port p, in port readyin,
                                 out port readyout,  __clock_t  clk,
                                 unsigned initial);
# 127 "xs1.h" 3
void configure_in_port_strobed_master(void port p, out port readyout,
                                      const  __clock_t  clk);
# 150 "xs1.h" 3
void configure_out_port_strobed_master(void port p, out port readyout,
                                      const  __clock_t  clk, unsigned initial);
# 172 "xs1.h" 3
void configure_in_port_strobed_slave(void port p, in port readyin,  __clock_t  clk);
# 197 "xs1.h" 3
void configure_out_port_strobed_slave(void port p, in port readyin,  __clock_t  clk,
                                      unsigned initial);
# 221 "xs1.h" 3
void configure_in_port(void port p, const  __clock_t  clk);
# 227 "xs1.h" 3
void configure_in_port_no_ready(void port p, const  __clock_t  clk);
# 250 "xs1.h" 3
void configure_out_port(void port p, const  __clock_t  clk, unsigned initial);
# 256 "xs1.h" 3
void configure_out_port_no_ready(void port p, const  __clock_t  clk, unsigned initial);
# 266 "xs1.h" 3
void configure_port_clock_output(void port p, const  __clock_t  clk);
# 275 "xs1.h" 3
void start_port(void port p);
# 282 "xs1.h" 3
void stop_port(void port p);
# 295 "xs1.h" 3
void configure_clock_src( __clock_t  clk, void port p);
# 309 "xs1.h" 3
void configure_clock_ref( __clock_t  clk, unsigned char divide);
# 325 "xs1.h" 3
void configure_clock_rate( __clock_t  clk, unsigned a, unsigned b);
# 339 "xs1.h" 3
void configure_clock_rate_at_least( __clock_t  clk, unsigned a, unsigned b);
# 353 "xs1.h" 3
void configure_clock_rate_at_most( __clock_t  clk, unsigned a, unsigned b);
# 366 "xs1.h" 3
void set_clock_src( __clock_t  clk, void port p);
# 379 "xs1.h" 3
void set_clock_ref( __clock_t  clk);
# 395 "xs1.h" 3
void set_clock_div( __clock_t  clk, unsigned char div);
# 410 "xs1.h" 3
void set_clock_rise_delay( __clock_t  clk, unsigned n);
# 425 "xs1.h" 3
void set_clock_fall_delay( __clock_t  clk, unsigned n);
# 445 "xs1.h" 3
void set_port_clock(void port p, const  __clock_t  clk);
# 463 "xs1.h" 3
void set_port_ready_src(void port p, void port ready);
# 481 "xs1.h" 3
void set_clock_ready_src( __clock_t  clk, void port ready);
# 491 "xs1.h" 3
void set_clock_on( __clock_t  clk);
# 501 "xs1.h" 3
void set_clock_off( __clock_t  clk);
# 511 "xs1.h" 3
void start_clock( __clock_t  clk);
# 519 "xs1.h" 3
void stop_clock( __clock_t  clk);
# 529 "xs1.h" 3
void set_port_use_on(void port p);
# 539 "xs1.h" 3
void set_port_use_off(void port p);
# 549 "xs1.h" 3
void set_port_mode_data(void port p);
# 561 "xs1.h" 3
void set_port_mode_clock(void port p);
# 582 "xs1.h" 3
void set_port_mode_ready(void port p);
# 593 "xs1.h" 3
void set_port_drive(void port p);
# 609 "xs1.h" 3
void set_port_drive_low(void port p);
# 624 "xs1.h" 3
void set_port_pull_up(void port p);
# 639 "xs1.h" 3
void set_port_pull_down(void port p);
# 649 "xs1.h" 3
void set_port_pull_none(void port p);
# 663 "xs1.h" 3
void set_port_master(void port p);
# 677 "xs1.h" 3
void set_port_slave(void port p);
# 691 "xs1.h" 3
void set_port_no_ready(void port p);
# 706 "xs1.h" 3
void set_port_strobed(void port p);
# 719 "xs1.h" 3
void set_port_handshake(void port p);
# 728 "xs1.h" 3
void set_port_no_sample_delay(void port p);
# 737 "xs1.h" 3
void set_port_sample_delay(void port p);
# 745 "xs1.h" 3
void set_port_no_inv(void port p);
# 756 "xs1.h" 3
void set_port_inv(void port p);
# 779 "xs1.h" 3
void set_port_shift_count( void port p, unsigned n);
# 794 "xs1.h" 3
void set_pad_delay(void port p, unsigned n);
# 834 "xs1.h" 3
void set_core_fast_mode_on(void);
# 842 "xs1.h" 3
void set_core_fast_mode_off(void);
# 865 "xs1.h" 3
void outuchar(chanend c, unsigned char val);
# 880 "xs1.h" 3
void outuint(chanend c, unsigned val);
# 896 "xs1.h" 3
unsigned char inuchar(chanend c);
# 912 "xs1.h" 3
unsigned inuint(chanend c);
# 929 "xs1.h" 3
void inuchar_byref(chanend c, unsigned char &val);
# 947 "xs1.h" 3
void inuint_byref(chanend c, unsigned &val);
# 957 "xs1.h" 3
void sync(void port p);
# 968 "xs1.h" 3
unsigned peek(void port p);
# 982 "xs1.h" 3
void clearbuf(void port p);
# 998 "xs1.h" 3
unsigned endin( void port p);
# 1015 "xs1.h" 3
unsigned partin( void port p, unsigned n);
# 1031 "xs1.h" 3
void partout( void port p, unsigned n, unsigned val);
# 1049 "xs1.h" 3
unsigned partout_timed( void port p, unsigned n, unsigned val, unsigned t);
# 1067 "xs1.h" 3
{unsigned , unsigned } partin_timestamped( void port p, unsigned n);
# 1085 "xs1.h" 3
unsigned partout_timestamped( void port p, unsigned n, unsigned val);
# 1099 "xs1.h" 3
void outct(chanend c, unsigned char val);
# 1114 "xs1.h" 3
void chkct(chanend c, unsigned char val);
# 1129 "xs1.h" 3
unsigned char inct(chanend c);
# 1144 "xs1.h" 3
void inct_byref(chanend c, unsigned char &val);
# 1158 "xs1.h" 3
int testct(chanend c);
# 1171 "xs1.h" 3
int testwct(chanend c);
# 1186 "xs1.h" 3
void soutct(streaming chanend c, unsigned char val);
# 1202 "xs1.h" 3
void schkct(streaming chanend c, unsigned char val);
# 1218 "xs1.h" 3
unsigned char sinct(streaming chanend c);
# 1234 "xs1.h" 3
void sinct_byref(streaming chanend c, unsigned char &val);
# 1248 "xs1.h" 3
int stestct(streaming chanend c);
# 1262 "xs1.h" 3
int stestwct(streaming chanend c);
# 1276 "xs1.h" 3
transaction out_char_array(chanend c, const char src[size], unsigned size);
# 1289 "xs1.h" 3
transaction in_char_array(chanend c, char src[size], unsigned size);
# 1302 "xs1.h" 3
void sout_char_array(streaming chanend c, const char src[size], unsigned size);
# 1315 "xs1.h" 3
void sin_char_array(streaming chanend c, char src[size], unsigned size);
# 1338 "xs1.h" 3
void crc32(unsigned &checksum, unsigned data, unsigned poly);
# 1362 "xs1.h" 3
unsigned crc8shr(unsigned &checksum, unsigned data, unsigned poly);
# 1377 "xs1.h" 3
{unsigned, unsigned} lmul(unsigned a, unsigned b, unsigned c, unsigned d);
# 1391 "xs1.h" 3
{unsigned, unsigned} mac(unsigned a, unsigned b, unsigned c, unsigned d);
# 1405 "xs1.h" 3
{signed, unsigned} macs(signed a, signed b, signed c, unsigned d);
# 1419 "xs1.h" 3
signed sext(unsigned a, unsigned b);
# 1433 "xs1.h" 3
unsigned zext(unsigned a, unsigned b);
# 1446 "xs1.h" 3
void pinseq(unsigned val);
# 1459 "xs1.h" 3
void pinsneq(unsigned val);
# 1474 "xs1.h" 3
void pinseq_at(unsigned val, unsigned time);
# 1489 "xs1.h" 3
void pinsneq_at(unsigned val, unsigned time);
# 1502 "xs1.h" 3
void timerafter(unsigned val);
# 1538 "xs1.h" 3
unsigned getps(unsigned reg);
# 1549 "xs1.h" 3
void setps(unsigned reg, unsigned value);
# 1570 "xs1.h" 3
int read_pswitch_reg(unsigned tileid, unsigned reg, unsigned &data);
# 1594 "xs1.h" 3
int read_sswitch_reg(unsigned tileid, unsigned reg, unsigned &data);
# 1616 "xs1.h" 3
int write_pswitch_reg(unsigned tileid, unsigned reg, unsigned data);
# 1636 "xs1.h" 3
int write_pswitch_reg_no_ack(unsigned tileid, unsigned reg, unsigned data);
# 1655 "xs1.h" 3
int write_sswitch_reg(unsigned tileid, unsigned reg, unsigned data);
# 1676 "xs1.h" 3
int write_sswitch_reg_no_ack(unsigned tileid, unsigned reg, unsigned data);
# 1691 "xs1.h" 3
int read_tile_config_reg(tileref tile, unsigned reg, unsigned &data);
# 1705 "xs1.h" 3
int write_tile_config_reg(tileref tile, unsigned reg, unsigned data);
# 1720 "xs1.h" 3
int write_tile_config_reg_no_ack(tileref tile, unsigned reg, unsigned data);
# 1742 "xs1.h" 3
int read_node_config_reg(tileref tile, unsigned reg, unsigned &data);
# 1757 "xs1.h" 3
int write_node_config_reg(tileref tile, unsigned reg, unsigned data);
# 1773 "xs1.h" 3
int write_node_config_reg_no_ack(tileref tile, unsigned reg, unsigned data);
# 1792 "xs1.h" 3
int read_periph_8(tileref tile, unsigned peripheral, unsigned base_address,
                  unsigned size, unsigned char data[size]);
# 1811 "xs1.h" 3
int write_periph_8(tileref tile, unsigned peripheral, unsigned base_address,
                   unsigned size, const unsigned char data[size]);
# 1832 "xs1.h" 3
int write_periph_8_no_ack(tileref tile, unsigned peripheral,
                          unsigned base_address, unsigned size,
                          const unsigned char data[size]);
# 1854 "xs1.h" 3
int read_periph_32(tileref tile, unsigned peripheral, unsigned base_address,
                   unsigned size, unsigned data[size]);
# 1875 "xs1.h" 3
int write_periph_32(tileref tile, unsigned peripheral, unsigned base_address,
                    unsigned size, const unsigned data[size]);
# 1898 "xs1.h" 3
int write_periph_32_no_ack(tileref tile, unsigned peripheral,
                           unsigned base_address, unsigned size,
                           const unsigned data[size]);
# 1910 "xs1.h" 3
unsigned get_local_tile_id(void);
# 1920 "xs1.h" 3
unsigned get_tile_id(tileref t);
# 1929 "xs1.h" 3
unsigned get_logical_core_id(void);
# 1934 "xs1.h" 3
extern int __builtin_getid(void);
# 7 "../src/app_bayer_testbench.xc" 2
# 1 "platform.h" 1 3
# 21 "platform.h" 3
# 1 "F://Sudha//workspace//xCORExa-vision//app_bayer_testbench//.build_Debug//SLICEKIT-L16.h" 1
# 4 "F://Sudha//workspace//xCORExa-vision//app_bayer_testbench//.build_Debug//SLICEKIT-L16.h"
# 1 "xs1.h" 1 3
# 5 "F://Sudha//workspace//xCORExa-vision//app_bayer_testbench//.build_Debug//SLICEKIT-L16.h" 2
# 13 "F://Sudha//workspace//xCORExa-vision//app_bayer_testbench//.build_Debug//SLICEKIT-L16.h"
extern tileref tile[2];




service xscope_host_data(chanend c);;
# 22 "platform.h" 2 3
# 8 "../src/app_bayer_testbench.xc" 2
# 1 "print.h" 1 3
# 34 "print.h" 3
int printchar(char value);
# 40 "print.h" 3
int printcharln(char value);
# 46 "print.h" 3
int printint(int value);
# 52 "print.h" 3
int printintln(int value);
# 58 "print.h" 3
int printuint(unsigned value);
# 64 "print.h" 3
int printuintln(unsigned value);
# 70 "print.h" 3
int printllong(long long value);
# 76 "print.h" 3
int printllongln(long long value);
# 82 "print.h" 3
int printullong(unsigned long long value);
# 88 "print.h" 3
int printullongln(unsigned long long value);
# 95 "print.h" 3
int printhex(unsigned value);
# 102 "print.h" 3
int printhexln(unsigned value);
# 109 "print.h" 3
int printllonghex(unsigned long long value);
# 116 "print.h" 3
int printllonghexln(unsigned long long value);
# 123 "print.h" 3
int printstr(const char (& alias s)[]);
# 133 "print.h" 3
int printstrln(const char (& alias s)[]);
# 9 "../src/app_bayer_testbench.xc" 2
# 1 "timer.h" 1 3
# 10 "../src/app_bayer_testbench.xc" 2
# 1 "stdio.h" 1 3
# 4 "stdio.h" 3
# 1 "stdio.h" 1 3
# 29 "stdio.h" 3
# 1 "_ansi.h" 1 3
# 15 "_ansi.h" 3
# 1 "newlib.h" 1 3
# 16 "_ansi.h" 2 3
# 1 "sys/config.h" 1 3
# 4 "sys/config.h" 3
# 1 "machine/ieeefp.h" 1 3
# 5 "sys/config.h" 2 3
# 17 "_ansi.h" 2 3
# 30 "stdio.h" 2 3
# 34 "stdio.h" 3
# 1 "stddef.h" 1 3
# 214 "stddef.h" 3
typedef  unsigned int  size_t;
# 35 "stdio.h" 2 3
# 37 "stdio.h" 3
# 1 "stdarg.h" 1 3
# 38 "stdio.h" 2 3
# 45 "stdio.h" 3
# 1 "sys/reent.h" 1 3
# 9 "sys/reent.h" 3
extern "C" {
# 13 "sys/reent.h" 3
# 1 "_ansi.h" 1 3
# 14 "sys/reent.h" 2 3
# 1 "sys/_types.h" 1 3
# 12 "sys/_types.h" 3
# 1 "machine/_types.h" 1 3
# 7 "machine/_types.h" 3
# 1 "machine/_default_types.h" 1 3
# 9 "machine/_default_types.h" 3
extern "C" {
# 22 "machine/_default_types.h" 3
# 1 "limits.h" 1 3
# 4 "limits.h" 3
# 1 "newlib.h" 1 3
# 5 "limits.h" 2 3
# 24 "limits.h" 3
# 1 "sys/config.h" 1 3
# 25 "limits.h" 2 3
# 23 "machine/_default_types.h" 2 3



typedef signed char __int8_t ;
typedef unsigned char __uint8_t ;








typedef signed short __int16_t;
typedef unsigned short __uint16_t;
# 46 "machine/_default_types.h" 3
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
# 58 "machine/_default_types.h" 3
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
# 76 "machine/_default_types.h" 3
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
# 99 "machine/_default_types.h" 3
typedef signed long long __int64_t;
typedef unsigned long long __uint64_t;
# 118 "machine/_default_types.h" 3
}
# 8 "machine/_types.h" 2 3
# 13 "sys/_types.h" 2 3
# 1 "sys/lock.h" 1 3




extern "C" {


typedef int _LOCK_SIMPLE_T;

typedef struct {

  unsigned _counter;


  unsigned _owner;
} _LOCK_FAIR_T;

typedef struct {
  int _owner;
  int _count;
} _LOCK_RECURSIVE_T;








void __lock_simple_init(volatile _LOCK_SIMPLE_T *);
void __lock_simple_close(volatile _LOCK_SIMPLE_T *);
void __lock_simple_acquire(volatile _LOCK_SIMPLE_T *);
int __lock_simple_try_acquire(volatile _LOCK_SIMPLE_T *);
void __lock_simple_release(volatile _LOCK_SIMPLE_T *);

void __lock_fair_init(volatile _LOCK_FAIR_T *);
void __lock_fair_close(volatile _LOCK_FAIR_T *);
void __lock_fair_acquire(volatile _LOCK_FAIR_T *);
int __lock_fair_try_acquire(volatile _LOCK_FAIR_T *);
void __lock_fair_release(volatile _LOCK_FAIR_T *);

void __lock_recursive_init(volatile _LOCK_RECURSIVE_T *);
void __lock_recursive_close(volatile _LOCK_RECURSIVE_T *);
void __lock_recursive_acquire(volatile _LOCK_RECURSIVE_T *);
int __lock_recursive_try_acquire(volatile _LOCK_RECURSIVE_T *);
void __lock_recursive_release(volatile _LOCK_RECURSIVE_T *);

typedef _LOCK_FAIR_T _LOCK_T;
# 68 "sys/lock.h" 3
};
# 14 "sys/_types.h" 2 3


typedef long _off_t;







typedef short __dev_t;




typedef unsigned short __uid_t;


typedef unsigned short __gid_t;
# 45 "sys/_types.h" 3
typedef long _fpos_t;
# 57 "sys/_types.h" 3
typedef int _ssize_t;
# 64 "sys/_types.h" 3
# 1 "stddef.h" 1 3
# 355 "stddef.h" 3
typedef  unsigned int  wint_t;
# 65 "sys/_types.h" 2 3



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;
# 15 "sys/reent.h" 2 3






typedef unsigned  long  __ULong;
# 36 "sys/reent.h" 3
struct _reent;
# 45 "sys/reent.h" 3
struct __sbuf {
	unsigned char *_base;
	int _size;
};
# 76 "sys/reent.h" 3
struct __sFILE;
# 172 "sys/reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 189 "sys/reent.h" 3
struct _reent;

extern  void   _cleanup ( void ) ;

extern __FILE *__stdin, *__stdout, *__stderr;

__FILE *  __getstdin (void) ;
__FILE *  __getstdout (void) ;
__FILE *  __getstderr (void) ;



}
# 46 "stdio.h" 2 3
# 47 "stdio.h" 3
# 1 "sys/types.h" 1 3
# 20 "sys/types.h" 3
# 1 "_ansi.h" 1 3
# 21 "sys/types.h" 2 3
# 25 "sys/types.h" 3
# 1 "machine/_types.h" 1 3
# 26 "sys/types.h" 2 3


extern "C" {
# 65 "sys/types.h" 3
# 1 "sys/_types.h" 1 3
# 66 "sys/types.h" 2 3
# 73 "sys/types.h" 3
# 1 "stddef.h" 1 3
# 152 "stddef.h" 3
typedef  int  ptrdiff_t;
# 326 "stddef.h" 3
typedef  unsigned char  wchar_t;
# 74 "sys/types.h" 2 3
# 1 "machine/types.h" 1 3
# 19 "machine/types.h" 3
typedef long int __off_t;
typedef int __pid_t;



typedef long int __loff_t;
# 75 "sys/types.h" 2 3
# 96 "sys/types.h" 3
typedef unsigned char u_char;
typedef unsigned short u_short;
typedef unsigned int u_int;
typedef unsigned long u_long;



typedef unsigned short ushort;
typedef unsigned int uint;



typedef  unsigned long  clock_t;




typedef  long  time_t;




struct timespec {
  time_t tv_sec;
  long tv_nsec;
};

struct itimerspec {
  struct timespec it_interval;
  struct timespec it_value;
};


typedef long daddr_t;
typedef char * caddr_t;
# 137 "sys/types.h" 3
typedef unsigned short ino_t;
# 166 "sys/types.h" 3
typedef _off_t off_t;
typedef __dev_t dev_t;
typedef __uid_t uid_t;
typedef __gid_t gid_t;


typedef int pid_t;

typedef long key_t;

typedef _ssize_t ssize_t;
# 190 "sys/types.h" 3
typedef unsigned int mode_t  ;




typedef unsigned short nlink_t;
# 217 "sys/types.h" 3
typedef long fd_mask;
# 225 "sys/types.h" 3
typedef struct _types_fd_set {
	fd_mask fds_bits[ ((( 64 )+(( (sizeof (fd_mask) * 8 ) )-1))/( (sizeof (fd_mask) * 8 ) )) ];
} _types_fd_set;
# 248 "sys/types.h" 3
typedef  unsigned long  clockid_t;




typedef  unsigned long  timer_t;



typedef unsigned long useconds_t;
typedef long suseconds_t;
# 260 "sys/types.h" 3
# 1 "sys/features.h" 1 3
# 25 "sys/features.h" 3
extern "C" {
# 178 "sys/features.h" 3
}
# 261 "sys/types.h" 2 3
# 406 "sys/types.h" 3
}
# 48 "stdio.h" 2 3

extern "C" {

typedef __FILE FILE;








typedef _fpos_t fpos_t;
# 66 "stdio.h" 3
# 1 "sys/stdio.h" 1 3
# 4 "sys/stdio.h" 3
# 1 "sys/lock.h" 1 3
# 5 "sys/stdio.h" 2 3
# 1 "sys/reent.h" 1 3
# 6 "sys/stdio.h" 2 3
# 67 "stdio.h" 2 3
# 161 "stdio.h" 3
FILE *  tmpfile (void) ;
char *  tmpnam (char *) ;
int  fclose (FILE *) ;
int  fflush (FILE *) ;
FILE *  freopen (const char *, const char *, FILE *) ;
# 170 "stdio.h" 3
int  fprintf (FILE *, const char *, ...) ;
# 172 "stdio.h" 3
int  fscanf (FILE *, const char *, ...) ;
# 174 "stdio.h" 3
int  printf (const char *, ...) ;
# 176 "stdio.h" 3
int  scanf (const char *, ...) ;
# 178 "stdio.h" 3
int  sscanf (const char *, const char *, ...) ;
# 180 "stdio.h" 3
int  vfprintf (FILE *, const char *, char* ) ;
# 182 "stdio.h" 3
int  vprintf (const char *, char* ) ;
# 184 "stdio.h" 3
int  vsprintf (char *, const char *, char* ) ;
# 186 "stdio.h" 3
int  fgetc (FILE *) ;
char *  fgets (char *, int, FILE *) ;
int  fputc (int, FILE *) ;
int  fputs (const char *, FILE *) ;
int  getc (FILE *) ;
int  getchar (void) ;
char *  gets (char *) ;
int  putc (int, FILE *) ;
int  putchar (int) ;
int  puts (const char *) ;
int  ungetc (int, FILE *) ;
size_t  fread ( void * , size_t _size, size_t _n, FILE *) ;
size_t  fwrite (const void * , size_t _size, size_t _n, FILE *) ;



int  fgetpos (FILE *, fpos_t *) ;

int  fseek (FILE *, long, int) ;



int  fsetpos (FILE *, const fpos_t *) ;

long  ftell ( FILE *) ;
void  rewind (FILE *) ;
void  clearerr (FILE *) ;
int  feof (FILE *) ;
int  ferror (FILE *) ;
void  perror (const char *) ;
FILE *  fopen (const char *_name, const char *_type) ;
int  sprintf (char *, const char *, ...) ;
# 219 "stdio.h" 3
int  remove (const char *) ;
int  rename (const char *, const char *) ;





int  fseeko (FILE *, off_t, int) ;
off_t  ftello ( FILE *) ;

int  asiprintf (char **, const char *, ...) ;
# 231 "stdio.h" 3
char *  asniprintf (char *, size_t *, const char *, ...) ;
# 233 "stdio.h" 3
char *  asnprintf (char *, size_t *, const char *, ...) ;
# 235 "stdio.h" 3
int  asprintf (char **, const char *, ...) ;
# 238 "stdio.h" 3
int  diprintf (int, const char *, ...) ;
# 241 "stdio.h" 3
int  fcloseall ( void ) ;
int  fiprintf (FILE *, const char *, ...) ;
# 244 "stdio.h" 3
int  fiscanf (FILE *, const char *, ...) ;
# 246 "stdio.h" 3
int  iprintf (const char *, ...) ;
# 248 "stdio.h" 3
int  iscanf (const char *, ...) ;
# 250 "stdio.h" 3
int  siprintf (char *, const char *, ...) ;
# 252 "stdio.h" 3
int  siscanf (const char *, const char *, ...) ;
# 254 "stdio.h" 3
int  snprintf (char *, size_t, const char *, ...) ;
# 256 "stdio.h" 3
int  sniprintf (char *, size_t, const char *, ...) ;
# 258 "stdio.h" 3
char *  tempnam (const char *, const char *) ;
int  vasiprintf (char **, const char *, char* ) ;
# 261 "stdio.h" 3
char *  vasniprintf (char *, size_t *, const char *, char* ) ;
# 263 "stdio.h" 3
char *  vasnprintf (char *, size_t *, const char *, char* ) ;
# 265 "stdio.h" 3
int  vasprintf (char **, const char *, char* ) ;
# 267 "stdio.h" 3
int  vdiprintf (int, const char *, char* ) ;
# 269 "stdio.h" 3
int  vfiprintf (FILE *, const char *, char* ) ;
# 271 "stdio.h" 3
int  vfiscanf (FILE *, const char *, char* ) ;
# 273 "stdio.h" 3
int  vfscanf (FILE *, const char *, char* ) ;
# 275 "stdio.h" 3
int  viprintf (const char *, char* ) ;
# 277 "stdio.h" 3
int  viscanf (const char *, char* ) ;
# 279 "stdio.h" 3
int  vscanf (const char *, char* ) ;
# 281 "stdio.h" 3
int  vsiprintf (char *, const char *, char* ) ;
# 283 "stdio.h" 3
int  vsiscanf (const char *, const char *, char* ) ;
# 285 "stdio.h" 3
int  vsniprintf (char *, size_t, const char *, char* ) ;
# 287 "stdio.h" 3
int  vsnprintf (char *, size_t, const char *, char* ) ;
# 289 "stdio.h" 3
int  vsscanf (const char *, const char *, char* ) ;
# 298 "stdio.h" 3
FILE *  fdopen (int, const char *) ;
int  fileno (FILE *) ;
int  getw (FILE *) ;
int  pclose (FILE *) ;
FILE *  popen (const char *, const char *) ;
int  putw (int, FILE *) ;
void  setbuffer (FILE *, char *, int) ;
int  setlinebuf (FILE *) ;
int  getc_unlocked (FILE *) ;
int  getchar_unlocked (void) ;
void  flockfile (FILE *) ;
int  ftrylockfile (FILE *) ;
void  funlockfile (FILE *) ;
int  putc_unlocked (int, FILE *) ;
int  putchar_unlocked (int) ;
# 321 "stdio.h" 3
int  dprintf (int, const char *, ...) ;
# 324 "stdio.h" 3
FILE *  fmemopen (void *, size_t, const char *) ;


FILE *  open_memstream (char **, size_t *) ;
# 332 "stdio.h" 3
int  vdprintf (int, const char *, char* ) ;
# 340 "stdio.h" 3
int  _fflush (FILE *) ;
char *  _fgets_r (struct _reent *, char *, int, FILE *) ;
int  _fiscanf_r (struct _reent *, FILE *, const char *, ...) ;
# 344 "stdio.h" 3
int  _fputc_r (struct _reent *, int, FILE *) ;
int  _fputs_r (struct _reent *, const char *, FILE *) ;
int  _fscanf_r (struct _reent *, FILE *, const char *, ...) ;
# 348 "stdio.h" 3
long  _ftell_r (struct _reent *, FILE *) ;
size_t  _fwrite_r (struct _reent *, const void * , size_t _size, size_t _n, FILE *) ;
int  _getc_r (struct _reent *, FILE *) ;
int  _getchar_r (struct _reent *) ;
char *  _gets_r (struct _reent *, char *) ;
int  _iscanf_r (struct _reent *, const char *, ...) ;
# 355 "stdio.h" 3
int  _mkstemp_r (struct _reent *, char *) ;
char *  _mktemp_r (struct _reent *, char *) ;
void  _perror_r (struct _reent *, const char *) ;
int  _putc_r (struct _reent *, int, FILE *) ;
int  _putchar_unlocked_r (struct _reent *, int) ;
int  _putchar_r (struct _reent *, int) ;
int  _remove_r (struct _reent *, const char *) ;
int  _rename_r (struct _reent *, const char *_old, const char *_new) ;
# 364 "stdio.h" 3
int  _scanf_r (struct _reent *, const char *, ...) ;
# 366 "stdio.h" 3
int  _siscanf_r (struct _reent *, const char *, const char *, ...) ;
# 368 "stdio.h" 3
int  _sscanf_r (struct _reent *, const char *, const char *, ...) ;
# 370 "stdio.h" 3
int  _ungetc_r (struct _reent *, int, FILE *) ;
int  _vfiscanf_r (struct _reent *, FILE *, const char *, char* ) ;
# 373 "stdio.h" 3
int  _vfscanf_r (struct _reent *, FILE *, const char *, char* ) ;
# 375 "stdio.h" 3
int  _viscanf_r (struct _reent *, const char *, char* ) ;
# 377 "stdio.h" 3
int  _vscanf_r (struct _reent *, const char *, char* ) ;
# 379 "stdio.h" 3
int  _vsiscanf_r (struct _reent *, const char *, const char *, char* ) ;
# 381 "stdio.h" 3
int  _vsscanf_r (struct _reent *, const char *, const char *, char* ) ;
# 384 "stdio.h" 3
ssize_t  __getdelim (char **, size_t *, int, FILE *) ;
ssize_t  __getline (char **, size_t *, FILE *) ;
# 411 "stdio.h" 3
int  __srget (FILE *) ;
int  __swbuf (int, FILE *) ;
# 587 "stdio.h" 3
}
# 5 "stdio.h" 2 3
# 1 "safe/stdio.h" 1 3
# 4 "safe/stdio.h" 3
# 1 "stdio.h" 1 3
# 5 "safe/stdio.h" 2 3


FILE * movable _safe_tmpfile(void);
char * alias _safe_tmpnam(char (&?s)[]);
FILE * movable _safe_freopen(const char path[], const char mode[], FILE * movable fp);
char * alias _safe_fgets(char * alias s, int size, FILE * fp);
int _safe_fputs(const char s[], FILE * fp);
char * alias _safe_gets(char * alias s);
int _safe_puts(const char s[]);
size_t _safe_fread(char ptr[size], size_t size, size_t n, FILE * fp);
size_t _safe_fwrite(const char ptr[size], size_t size, size_t n, FILE * fp);
int _safe_fgetpos(FILE * fp, fpos_t pos[1]);
int _safe_fsetpos(FILE * fp, const fpos_t pos[1]);
void _safe_perror(const char s[]);
FILE * movable _safe_fopen(const char name[], const char type[]);
int _safe_fclose(FILE * movable fp);
int _safe_remove(const char file[]);
int _safe_rename(const char from[], const char to[]);
# 6 "stdio.h" 2 3
# 11 "../src/app_bayer_testbench.xc" 2
# 12 "../src/app_bayer_testbench.xc"
# 1 "bayer_interpolation.h" 1
# 11 "bayer_interpolation.h"
# 1 "pipeline_interface.h" 1
# 15 "pipeline_interface.h"
typedef enum {

    NOT_USED_COMMAND,

    SET_SCREEN_RESOLUTION,
    SET_COLOR_MODE,
    SET_REGION_OF_INTEREST,

    BAYER_MODE,

    START_OPERATION,
    STOP_OPERATION
}mgmt_intrf_commands_t;


typedef enum {
    APM_MGMT_FAILURE,
    APM_MGMT_SUCCESS
}mgmt_intrf_status_t;


typedef struct {
  unsigned short column_start;
  unsigned short row_start;
  unsigned short horiz_blank;
  unsigned short verti_blank;
  unsigned short tiled_dig_gain;
}mgmt_resolution_param_t;


typedef enum {
  NOT_USED_COLOR,
  GREYSCALE,
  RGB
}mgmt_color_param_t;


typedef struct {
  unsigned short height;
  unsigned short width;
}mgmt_ROI_param_t;


typedef enum {
  NOT_USED_MODE,
  PIXEL_DOUBLE,
  BILINEAR,
  GRADIENT
}mgmt_bayer_param_t;
# 71 "pipeline_interface.h"
interface mgmt_interface {
  [[guarded]] void apm_mgmt(mgmt_intrf_commands_t command, void * unsafe param);
  [[guarded]] [[notification]] slave void request_response(void);
  [[guarded]] [[clears_notification]] mgmt_intrf_status_t get_response(void);
};


interface pipeline_interface {
  [[guarded]] unsigned get_new_line(unsigned * movable &line_buf_ptr, mgmt_ROI_param_t * metadata);
  [[guarded]] void release_line_buf(unsigned * movable &line_buf_ptr);
};
# 12 "bayer_interpolation.h" 2

void bayer_interpolation(interface mgmt_interface server bayer_if, interface pipeline_interface client apm_ds, interface pipeline_interface server apm_us);
# 13 "../src/app_bayer_testbench.xc" 2
# 1 "bayer_testbench.h" 1




void bayer_testbench_downstream(interface pipeline_interface server apm);
void bayer_testbench_upstream(interface pipeline_interface client apm);
# 14 "../src/app_bayer_testbench.xc" 2
# 1 "pipeline_interface.h" 1
# 15 "../src/app_bayer_testbench.xc" 2
# 20 "../src/app_bayer_testbench.xc"
void mgmt_intrf(interface mgmt_interface client mgr_bayer) {

    timer mgmt_timer;
    unsigned mgmt_timer_tick;
    char issue_cmd_flag = 0;
    char cmd_to_issue = '1';
    char next_cmd_to_issue = '1';
    mgmt_bayer_param_t mgmt_bayer_mode_l;

    mgmt_timer :> mgmt_timer_tick;

    while(1) {
      select {
          case (!issue_cmd_flag) => mgmt_timer when  __builtin_timer_after(mgmt_timer_tick+25000)  :> mgmt_timer_tick:
              issue_cmd_flag = 1;
              break;

          case mgr_bayer.request_response(void):
              mgmt_intrf_status_t response = mgr_bayer.get_response();
              if(response == APM_MGMT_SUCCESS) {
                  printstrln("mgmt_if: received APM_MGMT_SUCCESS from bayer_if");

                  cmd_to_issue = next_cmd_to_issue;
              }
              break;

          (issue_cmd_flag) => default: {
              issue_cmd_flag = 0;

              switch(cmd_to_issue) {

                  case '1':

                      printstrln("mgmt_if:Sending bayer mode to bayer_if");
                      mgmt_bayer_mode_l = PIXEL_DOUBLE;
                      unsafe {mgr_bayer.apm_mgmt(BAYER_MODE,&mgmt_bayer_mode_l);}
                      next_cmd_to_issue = '2';
                      break;

                  case '2':

                      printstrln("mgmt_if:Sending start operation to bayer_if");
                      unsafe {mgr_bayer.apm_mgmt(START_OPERATION,  ((void *)0) );}
                      next_cmd_to_issue = '3';
                      break;

                  case '3':

                      delay_seconds(10);
                      printstrln("mgmt_if:Sending stop operation to bayer_if");
                      unsafe {mgr_bayer.apm_mgmt(STOP_OPERATION,  ((void *)0) );}
                      next_cmd_to_issue = '0';
                      break;

                  default:
                      issue_cmd_flag = 1;
                      break;
              }
          }
          break;
      }
    }
}



int main(void) {
    interface mgmt_interface bayer_mgmt_intrf;
    interface pipeline_interface testbench_bayer_intrf, bayer_testbench_intrf;

    par {
        on tile[1]: mgmt_intrf(bayer_mgmt_intrf);
        on tile[1]: bayer_testbench_downstream(testbench_bayer_intrf);
        on tile[1]: bayer_interpolation(bayer_mgmt_intrf, testbench_bayer_intrf, bayer_testbench_intrf);
        on tile[1]: bayer_testbench_upstream(bayer_testbench_intrf);
    }
    return 0;
}
