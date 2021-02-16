//obrazki
$('a.enclosure_show_image').live('click',function(){
	Popup.show($(this).attr('href'),1,1,false,enclosures_images_obj);
	return false;
})


$('a.enclosure_show_swf').live('click',function(){
swf_data = $(this).attr('href');
obj_popup = '<div class="load_swf" style="height:500px;"><object width="500px" height="500px" id="swf_popup" data="'+swf_data+'" type="application/x-shockwave-flash" tabindex="-1" style="width: 100%, height: 100%"></object></div>'

$('body').dialog({
            'content':obj_popup,
            'fixed':false,
            'fitToWindow': false,
            'animate': false,
            'width':700,
            'wrapperClass': 'dialog_wrapper_sizes_chart'
        });
        
return false; 

})





$('a.enclosure_audio_play').live('click',function(){
	myPlaylist.setPlaylist(enclosures_audio_obj);

       $('div.projector_video_cover, div.projector_video').show();
        track = parseInt($(this).next('input[name=enclosure_play_position]').val()) - 1
        setTimeout(function(){myPlaylist.play(track );},1000)
	return false;
})

$('a.enclosure_video_play').live('click',function(){
	
myPlaylist.setPlaylist(enclosures_video_obj);
$('div.projector_video_cover, div.projector_video').show();
track = parseInt($(this).next('input[name=enclosure_play_position]').val()) - 1
setTimeout(function(){myPlaylist.play(track );},1000) 
return false;
})