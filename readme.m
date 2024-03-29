% Step by step with JUMP.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% _________________________________________________________________________
%                               VASCA
% _________________________________________________________________________
%% Infos:
%->>> InfosFile.m
% This file has to be nest in the "roots" repository where fes data of the 
% velocity fields are.
% _________________________________________________________________________
% A) --- Spectral analysis
%% MAIN:
%->>> SpectralAnalysis_FB_Galperin2015.m
% Here we compute the spectral analysis. Everything is in cm !!
%% Sub-routines:
%->>> FourierBesselDecomp.m
% Function that compute the spectral decomposition.
%->>> Maps_Galperin2015.m
% This maps the first time step to see the sector you are working on.
%->>> Windowing.m
% This is a function that creates matrices for signal windowing in a
% choosen direction and with Tukey or Hanning functions.
%->>> loadmtx.m
% This load the .mtx files of the velocity fields.
%% Plot-routines:
%->>> SpectralAnalysis_Plots.m
% Plots files saved in the Main.
% _________________________________________________________________________
% B) --- Potential Vorticity monotonization
%% MAINS:
%->>> DerivateVorticita_Galperin2015.m
% Leads to relative and potential vorticity for all frames. Data are saved
% in the appropriate folder.
%->>> PV_mono_Galperin2015.m:
% PV is monotonized/sorted in order to extract the equivalent Thorpe scale
% denoted L_M. Three averaging procedures can be followed as detailed in
% PV_mono_Torino.
% By looking at the number of points on the radius and in azimuth one might
% have to take out some points. PtDaTogliere = (pt1,pt2,...) give the index
% of the points to take out on the radius when there is too few data to
% have a complete radial profil.
%                           --> L_M is the result of PV mono.
%% Plot-routines:
%->>> PV_Plots
% Plots files saved in the Mains.



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% _________________________________________________________________________
%                               TORINO
% _________________________________________________________________________
% 1) --- Data load & infos
% ## Load data from the Turnbase:
% https://turbase.cineca.it/init/routes/#/logging/view_dataset/99/tabmeta
% in -> files/data/
% ## EXPT_infos.m :
% Information on each experiment has to be given in EXPT_infos before
% running
% ## Create_Grid_pol_Torino_m.m & Create_Grid_pol_Torino_cm.m:
% Create the polar grid that is used all along data analysis, respectively
% in m and cm.
% _________________________________________________________________________
% 4) --- Interpolation on the grid
% ## Interpolazione_Torino.m:
% Data from cartesian coordinates are interpolate via griddata(...,'cubic')
% onto the polar grid defined in Create_Grid_pol_Torino_xx.
% Files are save in the roots + output path.
% _________________________________________________________________________
% 5) --- Potential Vorticity monotonization
% ## derivate_Vorticita_Torino.m
% Leads to relative and potential vorticity for all frames. Data are saved
% in the appropriate folder.
% ## PV_mono_Torino.m:
% PV is monotonized/sorted in order to extract the equivalent Thorpe scale
% denoted L_M. Three averaging procedures can be followed as detailed in
% PV_mono_Torino. At that stage procedure III is likely to be selected as
% final results.
% By looking at the number of points on the radisu and in azimuth one might
% have to take out some points. PtDaTogliere = (pt1,pt2,...) give the index
% of the points to take out on the radius when there is too few data to
% have a complete radial profil.
%                           --> L_M is the result of PV mono.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
