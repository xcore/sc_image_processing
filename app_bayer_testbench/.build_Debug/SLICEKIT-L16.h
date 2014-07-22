#ifndef HAVE_PLATFORM_H
#define HAVE_PLATFORM_H

#include <xs1.h>

/*
 * Platform description header file.
 * Automatically generated from "..\.\SLICEKIT-L16.xn".
 */

#ifdef __XC__
/* Core array declaration. */
extern tileref tile[2];
#endif

#ifdef __XC__
/* Service prototypes. */
service xscope_host_data(chanend c);;
#endif

#if defined(__XC__)
#define PORT_SPI_MISO on tile[0]: XS1_PORT_1A
#define PORT_SPI_SS on tile[0]: XS1_PORT_1B
#define PORT_SPI_CLK on tile[0]: XS1_PORT_1C
#define PORT_SPI_MOSI on tile[0]: XS1_PORT_1D
#define PORT_SPI_DISABLE on tile[0]: XS1_PORT_8D
#else
#define PORT_SPI_MISO XS1_PORT_1A
#define PORT_SPI_SS XS1_PORT_1B
#define PORT_SPI_CLK XS1_PORT_1C
#define PORT_SPI_MOSI XS1_PORT_1D
#define PORT_SPI_DISABLE XS1_PORT_8D
#endif


/* Reference frequency definition. */
#define PLATFORM_REFERENCE_HZ 100000000
#define PLATFORM_REFERENCE_KHZ 100000
#define PLATFORM_REFERENCE_MHZ 100

#endif /* HAVE_PLATFORM_H */

