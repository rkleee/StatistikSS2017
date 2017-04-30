byte = function() {
  # Konvertiere Zahl zwischen 0 und 255 in ein Byte
  as.integer(intToBits(sample(0:255,1))[1:8])
}

# Wiederhole 10^4 mal die Summe des Byte
exp=replicate(10000,sum(byte()))

# Erstelle Histogramm
hist(replicate(10000,sum(byte())),freq=T,main='Binomialverteilung',
     xlab='Wert',ylab='Relative Häufigkeit',breaks=0:9-0.5)
