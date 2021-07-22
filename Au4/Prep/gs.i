set cell 24 0 0 0 24 0 0 0 24
species gold Au_ONCV_PBE-1.2.xml
atom  Au1   gold   1.4029665738672197  3.5243389687017  0.33326167807244
atom  Au2   gold   0.21432892705040008  0.38550410167031995  3.72154037559638
atom  Au3   gold   3.2908028364586404  -0.85604587282674  0.29357743231225997
atom  Au4   gold   4.5928240425902604  2.27334036426174  3.65162051401892

#set net_charge 1
set ecut 30
set nempty 8
set fermi_temp 500
set xc PBE
set wf_dyn JD
set scf_tol 1.e-6
# ground state calculation
run -atomic_density 0 100 10
set atoms_dyn CG
run 200 10 5
save gs.xml

set atoms_dyn MD
set dt 80
randomize_v 650
reset_rotation
reset_vcm
set thermostat BDP
set th_temp 500
run 1500 10 5
save md.xml
