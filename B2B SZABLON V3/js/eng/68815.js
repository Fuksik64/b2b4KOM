$('a.projector_video_close').live('click',function(){
	$('div.projector_video_cover, div.projector_video').hide();
	myPlaylist.remove();
})