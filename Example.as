	

	var tex:Texture = Texture.fromBitmap(new Img1());
	
	//add transparency around texture to prevent clipping 
	var framed_tex:Texture = Texture.fromTexture(tex, null, new Rectangle( -40, -40, tex.width, tex.height));
	wave_image = new Image(framed_tex);
	
	addChild(wave_image);
	
	this.wave_filter = new WaveFilter();			
	this.linear_source = new WaveSource(WaveSource.LINEAR, .01, .5, 50, 30);
	this.radial_source = new WaveSource(WaveSource.RADIAL, .02, 5, 60, 5, new Point(.3,.3), 1);
	
	this.wave_filter.addWaveSource(this.linear_source);
	this.wave_filter.addWaveSource(this.radial_source);			
	Starling.juggler.add(this.wave_filter);
	
	wave_image.filter = this.wave_filter;