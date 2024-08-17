This is a repository for DQPM-nn (off-shell) model study: DNNs are used to infer masses & widths of quasi-gluons/(anti)quarks from lQCD data. Transport coefficients are evaluated the Kubo-Zubarev formalism in different setups. Different parameter settings, to improve the description of lQCD data on the $\chi_2$ and $\sigma_Q/T$ of strange quarks. 

## Surrogates
This folder contains the NN models for a fast calculation of thermodynamic integrals and the tables to train them.

## DQPM-NN 
This folder contains the core DQPM-NN, written in its more generic form with 6 outputs (refer to 2311.15984). One can change the number of outputs by modifying:
> def makemodel(initializer_):
  #making DQPMNN model
  quasiparticle = tf.keras.Sequential()
  quasiparticle.add( tf.keras.layers.Dense(24,activation="sigmoid",kernel_initializer=initializer))
  quasiparticle.add( tf.keras.layers.Dense(12,activation="sigmoid",kernel_initializer=initializer))
  quasiparticle.add( tf.keras.layers.Dense(12,activation="sigmoid",kernel_initializer=initializer))
  quasiparticle.add( tf.keras.layers.Dense(6,activation=custom_activation ,kernel_initializer=initializer_))
  return quasiparticle

and changing the last "6" with the desired number of outputs

## Setups
Here we report the models models used in the publication 2311.15984, together with a basic script to plot them. 
