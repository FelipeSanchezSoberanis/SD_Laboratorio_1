<p align="center">
<img style="height:100px;margin:0"  src="https://upload.wikimedia.org/wikipedia/commons/8/8e/UADY_logo.svg" height="100px">
</p>

# Digital Systems

### Laboratory Practice 1
Students:
- Felipe Sánchez Soberanis
- Carlos Eduardo Canul Basto
- José Moisés Ayil Barceló
- Sebastián Tuyú Piñeiro

> <small>In this repository you can find all the code written and used for the design and simulation of the FPGAs contemplated in the practice. The default branch is for the case of 1 bit, but you can change it to the branch "2bit" to see the other case.</small>

### Excercises
- [1-BIT](https://github.com/FelipeSanchezSoberanis/SD_Laboratorio_1/tree/1bit)
- [2-BIT](https://github.com/FelipeSanchezSoberanis/SD_Laboratorio_1/tree/2bit)

### Test Bench
- [TEST: 1-BIT](https://github.com/FelipeSanchezSoberanis/SD_Laboratorio_1/blob/1bit/TB_Compuertas.vhd)

	 For each test we have analyze all the combinations of inputs A and B, as is illustrated on the following code: 
	 ```vhdl
	 		A <= '0', '1' after 200 ns;
			B <= '0', '1' after 100 ns, '0' after 200 ns, '1' after 300 ns;
	```

- [TEST: 2-BIT](https://github.com/FelipeSanchezSoberanis/SD_Laboratorio_1/blob/2bit/TB_Compuertas.vhd)

	 Due that on the 2-BIT circuit we have a vector (<i>or a data bus</i>) we need to add other scenarios on the test in order to accomplish all the possible results:
	```vhdl
	 		A(1) <= '0', '1' after 400ns;
			A(0) <= '0', '1' after 200ns, '0' after 400ns, '1' after 600ns;
			B(1) <= '0', '1' after 100ns, '0' after 200ns, '1' after 300ns, '0' after 400ns, '1' after 500ns, '0' after 600ns, '1' after 700ns, '0' after 800ns;
			B(0) <= '0', '1' after 50ns, '0' after 100ns, '1' after 150ns, '0' after 200ns, '1' after 250ns, '0' after 300ns, '1' after 350ns, '0' after 400ns, '1' after 450ns, '0' after 500ns, '1' after 550ns, '0' after 600ns, '1' after 650ns, '0' after 700ns, '1' after 750ns;
	```
