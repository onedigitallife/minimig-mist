###########################################################################
#
# Generated by : Version 10.1 Build 197 01/19/2011 Service Pack 1 SJ Web Edition
#
# Project      : minimig_de1
# Revision     : minimig_de1
#
# Date         : Sat Nov 17 09:18:51 CET 2012
#
###########################################################################
 
 
# WARNING: Ignored QSF Variable: Global TSU_REQUIREMENT = 2 ns
# WARNING: Ignored QSF Variable: Global TPD_REQUIREMENT = 2 ns
# WARNING: Ignored QSF Variable: Global TCO_REQUIREMENT = 2 ns
# WARNING: Expected ENABLE_CLOCK_LATENCY to be set to 'ON', but it is set to 'OFF'
#          In SDC, create_generated_clock auto-generates clock latency
#
# ------------------------------------------
#
# Create generated clocks based on PLLs
derive_pll_clocks -use_tan_name
#
# ------------------------------------------
# WARNING: Global Fmax translated to derive_clocks. Behavior is not identical
if {![info exist ::qsta_message_posted]} {
    post_message -type warning "Original Global Fmax translated from QSF using derive_clocks"
    set ::qsta_message_posted 1
}
derive_clocks -period "114 MHz"
#


# Original Clock Setting Name: CLOCK_27[0]
create_clock -period "37.037 ns" \
             -name {CLOCK_27[0]} {CLOCK_27[0]}
# ---------------------------------------------


# Original Clock Setting Name: CLOCK_50
create_clock -period "20.000 ns" \
             -name {CLOCK_50} {CLOCK_50}
# ---------------------------------------------


# Original Clock Setting Name: altera_internal_jtag~TCKUTAP
create_clock -period "8.771 ns" \
             -name {altera_internal_jtag~TCKUTAP} {altera_internal_jtag~TCKUTAP}
# ---------------------------------------------

# ** Clock Latency
#    -------------

# ** Clock Uncertainty
#    -----------------

# ** Multicycles
#    -----------
# ** Cuts
#    ----

# ** Input/Output Delays
#    -------------------




# ** Tpd requirements
#    ----------------

# ** Setup/Hold Relationships
#    ------------------------

# ** Tsu/Th requirements
#    -------------------


# ** Tco/MinTco requirements
#    -----------------------



# ---------------------------------------------
# The following clock group is added to try to 
# match the behavior of:
#   CUT_OFF_PATHS_BETWEEN_CLOCK_DOMAINS = ON
# ---------------------------------------------

set_clock_groups -asynchronous \
                 -group { \
                       altera_internal_jtag~TCKUTAP \
                        } \
                 -group { \
                       ctrl_top:ctrl_top|ctrl_clk:ctrl_clk|altpll:altpll_component|_clk0 \
                       ctrl_top:ctrl_top|ctrl_clk:ctrl_clk|altpll:altpll_component|_clk1 \
                       CLOCK_50 \
                        } \
                 -group { \
                       amigaclk:amigaclk|altpll:altpll_component|_clk0 \
                       amigaclk:amigaclk|altpll:altpll_component|_clk1 \
                       amigaclk:amigaclk|altpll:altpll_component|_clk2 \
                       CLOCK_27[0] \
                        } \

# ---------------------------------------------

