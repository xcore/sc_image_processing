#include <platform.h>
#include <xs1.h>
#include "display_manager.h"
#include "binarisation.h"
#include "CCA.h"
#include "lcd.h"
#include "otsu_threshold.h"
#include "display_controller.h"
#include "morph_closing.h"
#include "sdram.h"

  
    sdram_ports_0 sdram__resources = { 
      on tile[0]:XS1_PORT_16A,  
      on tile[0]:XS1_PORT_1A, 
      on tile[0]:XS1_PORT_1B,  
      on tile[0]:XS1_PORT_1C, 
      on tile[0]:XS1_PORT_1D, 
      on tile[0]: XS1_CLKBLK_1
    };




int main() {
  chan c_dm;
  chan c_dc;
    par {
on tile[0]: 
{
  object_localisation_otsu_threshold(c_dm);
  	object_localisation_binarisation(c_dm);
  	object_localisation_morphological_closing(c_dm);
  	object_localisation_CCA(c_dm);
}
    
    }
    return 0;
}