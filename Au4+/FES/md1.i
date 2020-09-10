load md.xml


set net_charge 1
set fermi_temp 500
set xc PBE
set wf_dyn JD
set scf_tol 1.e-6
set atoms_dyn MD
set dt 80
#randomize_v 800
reset_rotation
reset_vcm
set thermostat BDP
set th_temp 500
run 200 10 5
save md1.xml
