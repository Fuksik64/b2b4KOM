/* file=82357.js; addToHead=y; */

  adv_search = {
    searchPriceHandler: true,
    siteAjaxHandler: '',
    textAjaxHandler: '',
    noUpdatetSelect: [],
    activeTree: [],
    nuberOfSelected: 0,

    // loadingBegin: function(obj) {
    //   //   obj.addClass('searching_loading');
    //   obj.parent().addClass('searching_loading');
    // },
    // 
    // loadingEnd: function(obj) {
    //   obj.removeClass('loading');
    //   obj.parent().removeClass('loading');
    // 
    // },

    getParameters: function() {
      return $('#searching_form input.select_link_hidden[type=hidden], #searching_form input.searching_ajax, #searching_form input.searching_checkbox_name').not('.multipleselect').filter(function() {
        return $(this).val()
      }).serialize();
    },

    // disableSelect: function(data) {
    // 
    //     //ukrycie galezi drzewa
    //     //  $('.item_node_children .type_node_tree').hide();
    // 
    //     // $('#searching_form input.searching_list[type=hidden]').each(function(){
    //     //    if($(this).val()) $(this).linkselect("disable", false);
    //     // })
    // 
    //     for (i in data) {
    //       inputElement = $('#searching_form input[name="' + i + '"]');
    //       if (data[i] != 0) {
    //         inputElement.attr("disable", false);
    //         if (inputElement.next('.dropdown-toggle').size())
    //           (inputElement.next('.dropdown-toggle').attr("disable", false);
    // 
    // 
    //             // if(inputElement.is(':[type=hidden]')){
    //             //   //  inputElement.linkselect("disable", false);
    //             //     
    //             //     if(inputElement.is('.searching_duallist') && $('#searching_form input.searching_ajax[name="'+i+'_bis"]').size()){
    //             //        $('#searching_form input.searching_ajax[name="'+i+'_bis"]').linkselect("disable", false);
    //             //     }
    //             //     
    //             //     // if(inputElement.is('.select_sub_type_tree')){
    //             //     //     inputElement.parents('.type_node_tree').show()
    //             //     // }
    //             // }else{
    //             //     $('#searching_form input.searching_ajax[name="'+i+'"]').prop("disabled", false);
    //             // }
    //           }
    //           // else{
    //           //     if(inputElement.is('.select_sub_type_tree')){
    //           //        inputElement.parents('.type_node_tree').hide();
    //           //     }
    //           // }
    // 
    //       }
    //     },

        // disableAllSelect: function(data) {
        //     $('#searching_form input.searching_ajax').not('#pricelimitmin, #pricelimitmax').not('[type=hidden]').prop('disabled', true);
        //     $('input.searching_list[type=hidden], input.searching_ajax_duallist[type=hidden]').each(function() {
        //       $(this).linkselect("disable", true);
        //     })
        //   },

          enableAllSelect: function(data) {
            $('#searching_form input.searching_ajax').not('[name="pricelimitmin"],[name="pricelimitmax"],[name="sort"]').attr('disabled', false);
            $('#searching_form input.searching_ajax').not('[name="pricelimitmin"],[name="pricelimitmax"],[name="sort"]').next('.dropdown-toggle').attr('disabled', false);
            
            // $('#searching_form input.searching_ajax').not('[type=hidden]').prop('disabled', false);
            // $('input.searching_list[type=hidden]').each(function() {
            //   $(this).linkselect("disable", false);
            // })
          },

          error: function(jqXHR) {
            if (jqXHR.statusText == "abort") return false;

            adv_search.enableAllSelect();
            //  console.log(jqXHR);
            if (jqXHR.statusText == 'OK') {
              //  alert('blad bramki nie zwraca JSON');
            } else {
              //  alert(jqXHR.statusText);
            }

          },

          findTreeInputs : function(str){
            var patt = /menu_alt\[.+\]/g;
            var result = patt.test(str);
          
            if(!result) return false;
              
            patt = /[0-9]+_[0-9]+/g;
            result = patt.exec(str)[0];
            var tab = result.split('_');
            var inputs = []
            for(i=parseInt(tab[1]); i<=3; i++){
               inputs.push('menu_alt['+tab[0]+'_'+i+']')
            }
            return inputs;
          
          },

          getCount : function(currentElement){
                  adv_search.ajaxLoadSite(1);
                  adv_search.ajaxLoadSiteMessage('Trwa ladowanie danych');
          
          
                  if (treeInputs = adv_search.findTreeInputs(currentElement.attr('name'))) {
                    for(i = 1; i<= treeInputs.length; i++){
                      
                      var obj = $('#searching_form [name="'+treeInputs[i]+'"]');
                      obj.val('');
                      obj.parents('.type_node_tree').hide();
                      adv_search.prSelect([],obj.nextAll('ul'),'list')
                      //console.log($('#searching_form [name="'+treeInputs[i]+'"]'));
                    } 
              
                  }// bo w menu nie moze isc wartosc
                  
          
                  parametersSend = adv_search.getParameters();
                  $('#searching_form input.searching_ajax').not('[name="pricelimitmin"],[name="pricelimitmax"],[name="sort"]').attr('disabled', true);
                  $('#searching_form input.searching_ajax').not('[name="pricelimitmin"],[name="pricelimitmax"],[name="sort"]').next('.dropdown-toggle').attr('disabled', true);
                //  adv_search.disableAllSelect(); 
                  
                  $.ajax({
                      type: "POST",
                      url: 'ajax/search.php'+'?ajax=true&getCount=1'+'&'+parametersSend,
                      dataType: "json",
                      timeout: 20000,
                      success: function(json){
                        $('#searching_form .no_update_data').removeClass('no_update_data')
          
                    //  adv_search.searchPriceHandler = true;
                    //      adv_search.noUpdatetSelect = [];
                    //      adv_search.noUpdatetSelect.push(currentElement.attr('id'));
                          
                          // zm = jQuery.inArray(currentElement.attr('id'), adv_search.activeTree);
                          // 
                          // if(zm != -1){
                          //      adv_search.activeTree = adv_search.activeTree.slice(0, zm++)
                          // } 
                          // 
                          // 
                          // if(currentElement.is('.select_type_tree')){
                          //     adv_search.activeTree = [];
                          //     adv_search.activeTree.push(currentElement.attr('id'));
                          // } 
                          // 
                          // if(currentElement.is('.select_sub_type_tree')){
                          //     adv_search.activeTree.push(currentElement.attr('id'));
                          // }  
          
                          
                          adv_search.enableSelect(json.values);
                          adv_search.disableCheckbox();
                          
                          
                          adv_search.ajaxLoadSite(0);
                          
                      },
                      error: function(jqXHR){
                      //    adv_search.error(jqXHR);
                          adv_search.ajaxLoadSite(0);
                      }
                      
                  });
                  
          },

          // getText: function(text) {
          //   if (adv_search.textAjaxHandler.abort) {
          //     adv_search.textAjaxHandler.abort();
          //   }
          // 
          //   adv_search.textAjaxHandler = $.ajax({
          //     type: "POST",
          //     url: 'ajax/search-name.php?ajax=true&text=' + text,
          //     dataType: "json",
          //     timeout: 1000,
          //     success: function(json) {
          // 
          // 
          //     },
          //     error: function(jqXHR) {
          //       adv_search.error(jqXHR);
          //     }
          // 
          //   });
          // },


          ajaxLoadSite: function(flaga) {
            clearTimeout(adv_search.siteAjaxHandler);
            if (!flaga) {
              $('#ajaxLoadSite').remove();
              $('#ajaxLoadSite_cover').remove();
            } else {

              adv_search.siteAjaxHandler = setTimeout(function() {
                $('#ajaxLoadSite').remove();
                $('#ajaxLoadSite_cover').remove();
                $("body").append("<div id='ajaxLoadSite_cover'></div>");
                $('#ajaxLoadSite_cover').css({
                  'height': $(document).height(),
                  'width': $(window).width(),
                  'position': 'absolute',
                  'left': '0px',
                  'top': '0px'
                })

                $('body').append('<div id="ajaxLoadSite">');
                $("#ajaxLoadSite").css({
                  'left': (($(window).width() / 2) - ($("#ajaxLoadSite").width() / 2))
                });

              }, 500)

            }
          },

          ajaxLoadSiteMessage: function(message) {
            $('#ajaxLoadSite').append(message);
            $("#ajaxLoadSite").css({
              'left': (($(window).width() / 2) - ($("#ajaxLoadSite").width() / 2))
            });
          },


          loadCheckbox: function(message) {
            input_searching_checkbox = []
            $('input.searching_checkbox_name').each(function(i) {
              input_searching_checkbox[i] = $(this);
              $.ajax({
                type: "POST",
                url: 'ajax/search.php' + '?ajax=true&getOne=' + $(this).attr('name') + '&' + adv_search.getParameters(),
                dataType: "json",
                timeout: 6000,
                success: function(json) {
                  inputName = input_searching_checkbox[i].attr('name');
                  $(this).parent().find('label.searching_checkbox').remove();


                  for (j in json.values) {
                    input_searching_checkbox[i].parent().append('<label class="searching_checkbox"><input class="searching_ajax multipleselect" type="checkbox" name="' + inputName + '" value="' + json.values[j][0] + '" /><span>' + json.values[j][1] + '</span></label>')
                  }

                },
                error: function(jqXHR) {
                  adv_search.error(jqXHR)
                }

              });

            });

          }, //uzywane
          
          enableSelect: function(data) {
            for (i in data) {
              inputElement = $('#searching_form input[name="' + i + '"]');
              if (data[i] != 0) {
                inputElement.attr("disabled", false);
                if (inputElement.next('.dropdown-toggle').size()) {
                  inputElement.next('.dropdown-toggle').attr("disabled", false);
                  if (inputElement.parents('.type_node_tree').size())
                    inputElement.parents('.type_node_tree').show();
                }
                if (inputElement.parents('.type_node_sub_duallist').size()){
                  var name = inputElement.attr('name')+'_bis';
                  var inputElement_bis =  $('input.searching_ajax[name="'+name+'"]');
                  inputElement_bis.attr("disabled", false);
                  inputElement_bis.next('.dropdown-toggle').attr("disabled", false);
                }
              }
            }
          },

          // replaceSelects : function(elements,name) {
          //   elements.each(function(i) {
          //     var $select = $(this),number = i;
          //     $selectValue = $select.val(),
          //     $selectName = $select.attr('name');
          //     $ul = $('<div class="dropdown dropdownsearching form-group ' + $select.attr('class') + '"><ul class="dropdown-menu" aria-labelledby="'+name+number+'"></ul></div>'),
          //       
          //     $select.children().each(function(i) {
          //       var $option = $(this);
          //       $li = $('<li>');
          //       
          //       $('<a data-index="'+i+'">').attr('href', '#'+$option.attr('value')).attr('data-value', $option.attr('value'))
          //         .text($option.text()).addClass($selectValue == $option.attr('value') ? 'selected' : '').appendTo($li);
          //       $li.appendTo($ul.find('ul'));
          //     });
          //     $ul.prepend('<button id="'+name+number+'" class="form-control dropdown-toggle" data-indexcurrent="0" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"><span>' + $select.find('option:selected').text() + '</span><i class="caret"></i></button>')
          //       .prepend('<input class="select_hidden searching_ajax" type="hidden" name="' + $selectName + '" value="' + $selectValue + '" />');
          //     $select.replaceWith($ul);
          //   })
          // 
          // },

        disableCheckbox:  function(message){
           input_searching_checkbox = []
           $('input.searching_checkbox_name').each(function(i){
                input_searching_checkbox[i] = $(this);
                input_searching_checkbox[i].parent().find('input[type=checkbox]').prop('disabled',true);
                input_searching_checkbox[i].parent().find('label').addClass('disabled');
        
                $.ajax({
                    type: "POST",
                    url: 'ajax/search.php'+'?ajax=true&getOne='+$(this).attr('name')+'&'+adv_search.getParameters(),
                    dataType: "json",
                    timeout: 6000,
                    success: function(json){
                        inputName = input_searching_checkbox[i].attr('name');
                        for (j in json.values) {
                          input_searching_checkbox[i].parent().find('[value='+json.values[j][0]+']').prop('disabled',false).parent().removeClass('disabled');
                        }
                        
                    $('#searching_form .type_node_checkbox').each(function(){
                           checkboxNames = [];
                           $(this).find('input.multipleselect:checked').not(':disabled').each(function(i){
                               checkboxNames[i]  = $(this).val();   
                           })
                           $(this).find('input.searching_checkbox_name').val(checkboxNames.join(','));  
                    })
                
                        
                    },
                    error: function(jqXHR){
                        adv_search.error(jqXHR)
                    }
                    
                });
           
           });
           
        },

        prSelect :function(data,target,type){
              var options = [];
              j = 0;
              var $lihtml = '';
          //    $lihtml = '<li><a href="##" data-index="0" data-type="'+type+'" data-value="">'+searching_txt_wybierz+'</a></li>';

              var name = target.find('.dropdown-menu li:first a[data-value=""]').html();
        //      console.log(name);
              //if(!data.length) target.prev('.dropdown-toggle').find('span').text(name);
              for (i in data) {
                  $lihtml += '<li ><a href="#'+data[i][0]+'" data-index="'+(parseInt(i) + parseInt(1))+'" data-type="'+type+'" data-value="'+data[i][0]+'">'+data[i][1]+'</a></li>';
              }
          
              // console.log($lihtml);
              target.each(function() {
                $(this).find('li').not(':first').remove();
                $(this).append($lihtml);
              });
              
          },

          init: function() {

            app_shop.fn.replaceSelects($('#searching_form select'),'s_list_');
            adv_search.loadCheckbox();

            $('.searching_ajax .dropdown-toggle').live('click.searching', function() {
              
              var $this = $(this);              
              var $input = $this.prev('input');
              var $ul = $this.next('ul.dropdown-menu');
              var selectName = $input.attr('name');
              if ($this.is('.no_update_data')) return false;

              $this.addClass('loading-list');
              if (treeInputs = adv_search.findTreeInputs(selectName)) {
                for (i in treeInputs) {
                  $('#searching_form [name="' + treeInputs[i] + '"]').attr('disabled', true);
                }
                var parameters = adv_search.getParameters();
                for (i in treeInputs) {
                  $('#searching_form [name="' + treeInputs[i] + '"]').attr('disabled', false);
                }
              } else {
                var parameters = adv_search.getParameters();
              } // bo w menu nie moze isc wartosc


              $.ajax({
                type: "POST",
                url: 'ajax/search.php' + '?onlyVisibleElements=true&ajax=true&getOne=' + selectName + '&' + parameters,
                dataType: "json",
                timeout: 6000,

                success: function(json) {
                //  $('#searching_form .searching_loading').removeClass('searching_loading');
                  // jesli dualist
                  if ($this.parents('.type_node_duallist').size()) {
                    var duallis = $this.parents('.type_node_duallist')
                    adv_search.prSelect(json.values, duallis.find('ul.dropdown-menu'), 'dual');
                    duallis.find('.dropdown-toggle').addClass('no_update_data')
                  } else {
                    adv_search.prSelect(json.values, $ul, 'list');
                    $this.addClass('no_update_data');
                  }

                    $this.removeClass('loading-list');
                },
                error: function(jqXHR) {
                  // adv_search.error(jqXHR)
                }

              });
            });

            $('div.searching_engine_traits .dropdown-menu li a').live('click.searching', function() {
                var $this = $(this);
                var $value = $this.attr('data-value');
                var $parent = $this.parents('.dropdown');
                $parent.find('input').val($value);

                $parent.find('.selected').removeClass('selected');
                $this.addClass('selected');
            });

            $('.searching_ajax li a').live('click.searching', function() {
                var $this = $(this);
                var $value = $this.attr('data-value');
                var $type = $this.attr('data-type');
                var $index = $this.attr('data-index');
                var $html = $this.html();
                var $parent = $this.parents('.dropdown');

                $parent.find('.dropdown-toggle').attr('data-indexcurrent', $index);
                $parent.find('.selected').removeClass('selected');
                $this.addClass('selected');

                if ($type == 'dual') {
                  var values = $.map($parent.find('ul a'), function(val) {
                    return $(val).attr('data-value')
                  });
                  var indexes = $.map($this.parents('.type_node_duallist').find('[data-indexcurrent]'), function(val) {
                    return $(val).attr('data-indexcurrent')
                  });
                  var mininex = indexes[0];
                  var maxindex = indexes[1];

                  if (mininex == 0 && maxindex == 0) {
                    values = [];
                  } else {
                    if (maxindex == 0) maxindex = values.length;
                    values = values.slice(mininex, (parseInt(maxindex) + 1));
                  }
                  $parent.parents('.type_node_duallist').find('input.select_hidden').val(values.join(','));
                  }
                  else {
                    $parent.find('input').val($value);
                  }
                  $parent.find('.dropdown-toggle span').html($html);
                  adv_search.getCount($parent.find('input'));

                });
                $('.searching_engine_traits li a').live('click.searching', function() {
                    var $this = $(this);
                    var $html = $this.html();
                    var $parent = $this.parents('.dropdown');
                
                      $parent.find('.dropdown-toggle span').html($html);
                
                
                    });


              $('#searching_form input.searching_ajax[type=checkbox]').live('click.searching', function() {
                if ($(this).is('.multipleselect')) {
                  checkbox_parent = $(this).parents('.type_node_sub_checkbox');
                  checkboxNames = [];
                  checkbox_parent.find('input.multipleselect:checked').each(function(i) {
                    checkboxNames[i] = $(this).val();
                    $(this).attr('name', $(this).attr('name') + '_bis'); //_bis_bis  
                  })
                  checkbox_parent.find('input.searching_checkbox_name').val(checkboxNames.join(','));
                }
                currentElement = $(this);
                $('.currentSelected').removeClass('currentSelected');
                currentElement.addClass('currentSelected');
                adv_search.getCount(currentElement);
              });


              $(function() {

                //suwak
                // $("#slider-range").slider({
                //   range: true,
                //   min: parseInt($("#min_price_start").val()),
                //   max: parseInt($("#max_price_start").val()),
                //   values: [parseInt($("#min_price_start").val()), parseInt($("#max_price_start").val())],
                //   stop: function(event, ui) {
                // 
                //     currentElement = $(this);
                //     $('.currentSelected').removeClass('currentSelected');
                //     currentElement.addClass('currentSelected');
                //     adv_search.searchPriceHandler = false;
                //     adv_search.getCount(currentElement);
                // 
                //   },
                //   slide: function(event, ui) {
                //     $("#pricelimitmin").val(ui.values[0] + '.00');
                //     $("#pricelimitmax").val(ui.values[1] + '.00');
                // 
                //   }
                // });

                //kalendarz
                /*  $("#n59070_date").datepicker({
            dateFormat: iaical_dateFormat,
            dayNamesMin: iaical_daysShort,
            minDate:  Searching.calendar.Mindate,
            onSelect: function(){Searching.send('date');},
            monthNames: iaical_monthNames,
            monthNamesShort: iaical_shortNames,
            nextText: iaical_monthNext,
            prevText: iaical_monthPrev,
            showOn: 'button', 
            buttonText: ' ',
            firstDay: iaical_firstDay,
            changeMonth: true,
            changeYear: true,
            maxDate: '+0'
        })
    
        $("#n59070_date").click(function(){
            $("button.ui-datepicker-trigger").click();      
        })
        
*/

                $("#pricelimitmin").blur(function() {
                  adv_search.searchPriceHandler = false;
                  var minvalue = $("#pricelimitmin").val();
                  var maxvalue = $("#pricelimitmax").val();
                  var minvaluestart = parseInt($("#min_price_start").val());
                  var maxvaluestart = parseInt($("#max_price_start").val());

                  if (isNaN(minvalue) || (parseInt(minvalue) < minvaluestart)) {
                    $(this).val(minvaluestart + '.00');

                  } else {
                    if (parseInt(minvalue) > parseInt(maxvalue))
                      $(this).val(parseInt(maxvalue) + '.00');
                  }

                  // $("#slider-range").slider("values", 0, parseInt($(this).val()));
                  currentElement = $(this);
                  $('.currentSelected').removeClass('currentSelected');
                  currentElement.addClass('currentSelected');
                  adv_search.getCount(currentElement);
                });

                $("#pricelimitmax").blur(function() {
                  adv_search.searchPriceHandler = false;
                  var minvalue = $("#pricelimitmin").val();
                  var maxvalue = $("#pricelimitmax").val();
                  var minvaluestart = parseInt($("#min_price_start").val());
                  var maxvaluestart = parseInt($("#max_price_start").val());

                  if (isNaN(maxvalue) || (parseInt(maxvalue) > maxvaluestart)) $(this).val(maxvaluestart + '.00');
                  else if (parseInt(minvalue) > parseInt(maxvalue)) $(this).val(parseInt(minvalue) + '.00');

                  // $("#slider-range").slider("values", 1, parseInt($(this).val()));
                  currentElement = $(this);
                  $('.currentSelected').removeClass('currentSelected');
                  currentElement.addClass('currentSelected');
                  adv_search.getCount(currentElement);

                });

                $('#searching_form').submit(function() {
                  //$("#searching_form [name$='_bis']").remove()
                  $("#searching_form [name$='_bis']").attr('disabled', 'disabled');
                })



              });
            }
          }

        function validateDate(obj) {}