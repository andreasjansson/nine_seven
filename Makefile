all: piece.mid piece.pdf

piece.mid: piece.abc
	abc2midi piece.abc -o piece.mid -Q 80

piece.pdf: piece.ps
	ps2pdf piece.ps piece.pdf

piece.ps: piece.abc
	abcm2ps -O piece.ps piece.abc

play: piece.mid piece.pdf
	pmidi -p20:0 piece.mid

clean:
	rm piece.mid piece.ps piece.pdf
