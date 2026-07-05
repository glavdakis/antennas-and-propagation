# Antennas & Propagation

This repository contains exercises completed for the **Antennas & Propagation** course at the **Department of Electrical and Computer Engineering (ECE), Aristotle University of Thessaloniki (AUTH)** during the **2023–2024 academic year**.

The projects focus on the simulation, structural optimization, and array field analysis of high-frequency elements using **MATLAB** alongside electromagnetic modeling in **4NEC2 (Numerical Electromagnetics Code)**.

---

## 📋 Contents

The repository is organized into two primary project directories based on course sets:

### 📁 Project 1: Antenna Arrays & Mutual Impedance
* **1.1 Planar Array Field Synthesis**: Evaluation of the absolute electric field expression $|E| = |E_0||A_x(\psi_x)||A_y(\psi_y)|$ for a dense $24 \times 16$ planar array of isotropic elements with half-wavelength spacing ($d = \lambda/2$). Tracks phased excitation metrics over vertical/3D planes across multiple pointing configurations ($\theta_0 = 0^\circ, 30^\circ, 60^\circ$ and $\phi_0 = 0^\circ, 30^\circ, 60^\circ, 90^\circ$).
* **1.2 Antenna with Plane Reflector**: Field equations of a linear dipole $\lambda/2$ tilted at an angle $\theta_0$ adjacent to an infinite perfect electric conductor (PEC) plane reflector, using image theory to characterize the resultant far-field radiation patterns.
* **1.3 Array Directivity Calculations**: Implementation of multi-method directivity estimations ($D$), comparing analytical array equations against continuous double Riemann integrations ($\sum\sum |A|^2 \Delta s$) on a tight $1^\circ$ grid over an array of $N=10$ uniform broadside isotropic elements.
* **1.4 Mutual Impedance & Parasitic Arrays**: Modeling mutual complex impedance properties ($Z_{21m} = R_{21m} + jX_{21m}$) between parallel wire elements using Induced EMF equations. Explores a 3-element system (one driven center element and two side parasitic elements with $3\lambda/8$ spacing) to map tracking shifts in $Z_{in}$ and evaluate reflection coefficients ($|\Gamma| < 0.3$).

### 📁 Project 2: Numerical Modeling with NEC (4NEC2)
* **2.1 Double Discone Wire Antenna**: Numerical characterization of a symmetric wideband double discone geometry (each cone comprised of 6 thin wire elements of radius $\lambda/400$ and opening angle $2\theta_0 = 60^\circ$). Simulates $Z_{in}$ sweeps across $0.5f_0 \to 4f_0$ ($500\text{ MHz}$ to $4\text{ GHz}$) to demonstrate wideband matching optimization by tuning characteristic impedance to $Z_0 = 180\ \Omega$.
* **2.2 Helical & Axial-Mode Elements**: Building an axial-mode helical radiator ($N=12$ turns, circumference $C=\lambda$ at a center frequency $f_0 = 600\text{ MHz}$) backed by a structural disk ground plane modeled with segmented radials. Explores polarization and input impedance parameters over a $180\text{ MHz} \to 1200\text{ MHz}$ band.
* **2.3 Folded Dipole & Travelling-Wave Beverage Antennas**: 
  * *Folded Dipole*: Comparing impedance transformations ($Z_{in}$) and resonance shifting across narrow parallel conductor spacings ($d = \lambda/50, \lambda/10, \lambda/5$).
  * *Beverage Wire*: Modeling a $5\lambda$ long traveling-wave Beverage antenna suspended $\lambda/4$ above the ground at $3\text{ MHz}$, comparing radiation efficiency, main lobe tilt, and termination matching load values ($R_L \approx 648.45\ \Omega$) between perfect grounds and finite lossy soil environments.
