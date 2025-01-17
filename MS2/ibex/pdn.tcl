# Power nets
set ::power_nets $::env(VDD_PIN)
set ::ground_nets $::env(GND_PIN)

set ::macro_blockage_layer_list "li1 met1 met2 met3 met4 met5"

pdngen::specify_grid stdcell {
    name grid
    core_ring {
	    met4 {width 10 spacing 5 core_offset 20}
	    met5 {width 10 spacing 5 core_offset 20}
    }
    straps {
	    met5 {width 1.6 pitch $::env(FP_PDN_HPITCH) offset $::env(FP_PDN_HOFFSET)}
    }
    connect {{met4 met5}}
}

# POWER or GROUND #Std. cell rails starting with power or ground rails at the bottom of the core area
set ::rails_start_with "POWER" ;

# POWER or GROUND #Upper metal stripes starting with power or ground rails at the left/bottom of the core area
set ::stripes_start_with "POWER" ;

set ::halo 5
