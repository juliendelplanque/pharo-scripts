mirage
installMirage
	Metacello new
		repository: 'github://JulienDelplanque/Mirage:dev/src';
		baseline: 'Mirage';
		load.
	MIModel
		install: true;
		windowsOrderingMethod: #useWindowsOrderedByWorld.
	MITaskbarTasksHighlighter activate: true.
	MIWindowsHighlighter activate: true.
	MICarousel activate: false.
	MICarouselSettings thumbnailUpdateTime: 1.