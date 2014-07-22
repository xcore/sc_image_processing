# 1 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_interpolation.xc"
# 4 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_interpolation.xc"
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
# 5 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_interpolation.xc" 2
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
# 6 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_interpolation.xc" 2
# 7 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_interpolation.xc"
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
# 8 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_interpolation.xc" 2
# 1 "mt9v034.h" 1
# 9 "F:/Sudha/workspace/xCORExa-vision/module_bayer_interpolation/src/bayer_interpolation.xc" 2

inline unsigned short rgb888_to_rgb565(char r, char g, char b) {
  return (unsigned short)((b >> 3) & 0x1F) | ((unsigned short)((g >> 2) & 0x3F) << 5) | ((unsigned short)((r >> 3) & 0x1F) << 11);
}

void bayer_interpolation(interface mgmt_interface server bayer_if, interface pipeline_interface client apm_ds, interface pipeline_interface server apm_us){
    unsigned rgb565buf_0[2][ 752 /2],rgb565buf_1[2][ 752 /2];
    unsigned * movable rgb565buf_ptr[2][2] = {
            {&rgb565buf_0[0][0], &rgb565buf_0[1][0]},
            {&rgb565buf_1[0][0], &rgb565buf_1[1][0]}
    };
    unsigned * movable bayer_buf_ptr[2];
    char operation_started = 0;
    char operation_start_responded = 0;
    char rgb_data_available = 0;
    char rgb_buf_ptr_index = 0, rgb_buf_ptr_index1 = 0;
    char ROI_rcvd = 0;
    unsigned short ht, wd, row = 0;
    mgmt_bayer_param_t bayer_mode_l = NOT_USED_MODE;
    mgmt_ROI_param_t metadata;


    while(1){

        select {
            case bayer_if.apm_mgmt(mgmt_intrf_commands_t command, void * unsafe param):
                if( (command == BAYER_MODE) && (param !=  ((void *)0) ) ) {
                    printstrln("bayer_if: Bayer mode received from mgmt_if");
                    bayer_mode_l = *(mgmt_bayer_param_t *)param;
                 }
                 else if( (command == START_OPERATION) && (param ==  ((void *)0) ) ){
                    printstrln("bayer_if: Start operation received from mgmt_if");
                    if(bayer_mode_l == PIXEL_DOUBLE){
                              printstrln("bayer_if: PIXEL_DOUBLE mode received....!!!");
                              operation_started = 1;
                              operation_start_responded = 0;
                    }
                 }
                 else if(command == STOP_OPERATION) {
                    operation_started = 0;
                    operation_start_responded = 0;
                }

                bayer_if.request_response();
                break;


            case bayer_if.get_response(void) -> mgmt_intrf_status_t bayer_if_status:
                bayer_if_status = APM_MGMT_SUCCESS;
                operation_started ? (operation_start_responded = 1) : (operation_start_responded = 0);
                break;


            (operation_start_responded) => default : {

                select {

                    case rgb_data_available => apm_us.get_new_line(unsigned * movable &buf_ptr, mgmt_ROI_param_t * mtdata) -> unsigned flag:

                        buf_ptr = move(rgb565buf_ptr[1-rgb_buf_ptr_index1][rgb_buf_ptr_index]);
                        if (ROI_rcvd && (rgb_data_available-1)) {
                            *mtdata = metadata;
                            flag = 1;

                        }
                        else {
                            flag = 0;
                        }
                       break;

                    case apm_us.release_line_buf(unsigned * movable &buf_ptr):

                        rgb565buf_ptr[1-rgb_buf_ptr_index1][rgb_buf_ptr_index] = move(buf_ptr);
                        rgb_buf_ptr_index = 1-rgb_buf_ptr_index;
                        rgb_data_available--;
                        break;


                    (!rgb_data_available) => default: {

                        ROI_rcvd = apm_ds.get_new_line(bayer_buf_ptr[0], &metadata);
                        if (ROI_rcvd) {
                            ht = metadata.height;
                            wd = metadata.width;
                       }
                        apm_ds.get_new_line(bayer_buf_ptr[1],  ((void *)0) );

                        for (unsigned c=0; c<wd; c+=2){
                            char r = ((char *)bayer_buf_ptr[1])[c];
                            char b = ((char *)bayer_buf_ptr[0])[c+1];
                            char g0 = ((char *)bayer_buf_ptr[0])[c];
                            char g1 = ((char *)bayer_buf_ptr[1])[c+1];

                            unsigned short rgb565_0 = rgb888_to_rgb565(r,g0,b);
                            unsigned short rgb565_1 = rgb888_to_rgb565(r,g1,b);
                            unsigned rgb565_0_double = rgb565_0 | (rgb565_0<<16);
                            unsigned rgb565_1_double = rgb565_1 | (rgb565_1<<16);

                            rgb565buf_ptr[rgb_buf_ptr_index1][0][c/2] = rgb565_0_double;
                            rgb565buf_ptr[rgb_buf_ptr_index1][1][c/2] = rgb565_1_double;

                        }

                        apm_ds.release_line_buf(bayer_buf_ptr[0]);
                        apm_ds.release_line_buf(bayer_buf_ptr[1]);

                        rgb_data_available = 2;
                        row+=2; row%=ht;
                        rgb_buf_ptr_index1 = 1-rgb_buf_ptr_index1;

                    }
                    break;

                }

            }
            break;

        }
    }

}
