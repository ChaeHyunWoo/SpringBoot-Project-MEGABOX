
/**
 * PC 해더내 클릭 이벤트 및 자동 포커스
 * dom.menu : 대상 레이어 ID
 * dom.layer : 대상 레이어 CLASS
 **/
/*
var mbHead = mbHead || {};
mbHead = (function() {
    'use strict';
    return {
        dom: {
            menu:	['layer-sitemap', 'layer-search', 'layer-mymega'],
            layer:	'gnb-layer'
        },
        init: function() {
            this.setUI();
        },
        setUI: function() {
            this.addEvents();
        },
        addEvents: function() {
            mbHead.dom.menu.forEach(function(val, key) {
                $('.'+val+'').off('click').on('click', mbHead.toggle.menu);
            });
        },
        toggle: {
            menu: function(e) {
                var me		= $(this),
                    cls		= me.attr('class'),
                    attr	= me.attr('href'),
                    aNode	= $(attr).find('a:eq(0)'),
                    btnCLS	= $(attr).find('.layer-close');

                $('.'+mbHead.dom.layer).hide();

                $(attr).show();
                aNode.focus();

                btnCLS.on('click', mbHead.toggle.close.bind(this, {attr: attr, cls: cls}));

                return false;
            },
            close: function() {
                var args	= arguments[0],
                    attr	= args.attr,
                    cls		= args.cls,
                    tgt		= $('.'+cls+':eq(0)');

                $(attr).hide();
                tgt.focus();

                return false;
            }
        }
    }
}());
*/
/**
 * PC 헤더내 예약 롤오버시 모션
 * tickObj : 인터벌 오브젝트
 **/
/* 2019-04-15 이벤트 삭제 됨
var ticketMotion = ticketMotion || {};
ticketMotion = (function() {
    'use strict';
    var tickObj = undefined,
        isOpen = false,
        isAnimating = false;
    return {
        dom: {},
        init: function() {
            this.setUI();
        },
        setUI: function() {
            ticketMotion.dom.ticket	= $('#header > .header-util-r .link-ticket');
            ticketMotion.dom.cover	= $('#header > .header-util-r .ticket-cover');
            ticketMotion.dom.txtBox	= $('#header > .header-util-r .ticket-cover .text-box img');

            this.addEvents();
        },
        addEvents: function(e) {
            ticketMotion.dom.ticket.on('mouseenter', ticketMotion.toggle);
            ticketMotion.dom.cover.on('mouseleave', ticketMotion.toggle);
        },
        toggle: function() {
            //console.log('isAnimating: ', isAnimating, 'isOpen: ', isOpen);
            if (isAnimating) return false;

            switch (isOpen) {
                // 버튼 닫기
                case true:
                    isAnimating = true;
                    ticketMotion.dom.cover.finish().animate({width: 40}, 700, 'easeOutQuart', function() {
                        ticketMotion.dom.cover.animate({opacity: 0}, 300, 'easeOutQuart', function() {
                            ticketMotion.dom.cover.hide();
                            isOpen = false;
                            isAnimating = false;
                            ticketMotion.roll.clear();
                        });
                    });
                break;
                // 버튼 열기
                case false:
                    isAnimating = true;
                    ticketMotion.dom.cover.show().finish().animate({opacity: 1}, 300, 'easeOutQuart', function() {
                        ticketMotion.dom.cover.animate({width: 130}, 700, 'easeOutQuart', function() {
                            isOpen = true;
                            isAnimating = false;
                            ticketMotion.roll.img();
                        });
                    });
                break;
            };
        },
        roll: {
            startY: -16,
            startInt: 0,
            speed: function(value) {
                var temp = undefined;
                (value === 0) ? temp = 0 : temp = 2000;
                return temp;
            },
            img: function() {
                var intv = undefined;
                if (this.startInt < 2) {
                    this.startInt++;
                    ticketMotion.dom.txtBox.finish().animate({top: this.startInt * this.startY}, 700, 'easeInOutQuart');
                } else {
                    this.startInt = 0;
                    ticketMotion.dom.txtBox.css({top:0});
                };
                intv = ticketMotion.roll.speed(this.startInt);
                tickObj = setTimeout(this.img.bind(this), intv);
            },
            clear: function() {
                clearTimeout(tickObj);
                tickObj = null;
            }
        }
    }
}());
*/
/**
 *  PC 경고창 호출 메서드
 *  mbAlert.toggle({
        아이디:'layer_alert_ex',
        msg:'확인해주세요',
        confirm: 'confirm',
        cancel: 'cancel',
        callback:{
            confirm: function() { console.log('ok') },
            cancel:	function() { console.log('close') }
        },
        param:{
            confirm: 'yes',
            cancel:	undefined
        },
        width: 300,
        minHeight:200,
        type:''
    });
    mbAlert.toggle({
        아이디:'layer_alert_ex',
        msg:'',
        confirm: '확',
        cancel: '취',
        width: 300,
        minHeight:200,
        type:''
    });
 **/
 var mbAlert = mbAlert || {};
 mbAlert = (function() {
     'use strict';
      var self	 = undefined,
        dom	  = undefined,
        settings = {
              defaultGap:	10, // 브라우저와 레이어 기본 갭
              defaultHead:	45, // 레이어 타이틀 영역 높이
              minWidth:		350, // 레이어 최소 너비
              minHeight:	0 // 레이어 최소 높이
          },
          triggered	= undefined,
          tgtID		= undefined,
          clock		= undefined,
          focusables   = undefined;
      return {
          dom: {
              common:	'alert-popup',
              frame:	'<section class="alert-popup" style="position:fixed; padding-top:45px; background:#fff; z-index:5006;">'+
                            '<div class="wrap">'+
                                '<header class="layer-header">'+
                                '<h3 class="tit"></h3>'+
                                '</header>'+
                                '<div class="layer-con"></div>'+
                                '<button type="button" class="btn-layer-close">레이어 닫기</button>'+
                          '</div>'+
                      '</section>',
              dim:	'<div class="alertStyle" style="display:none;position:fixed;top:0px;left:0px;background:#000;opacity:0.7;'+
                        'width:100%;height:100%;z-index:5005;"></div>',
              root:	'body'
          },
         validates: true,
          init: function(opts) {
            self	= this;
            dom	 = self.dom;
              if (typeof opts === 'object') $.extend(settings, opts);
              this.setUI();
          },
          setUI: function() {
              this.dom.root = $('body');

              if ($('.alertStyle').length === 0) this.dom.root.append(mbAlert.dom.dim);
              this.dom.dim = $('.alertStyle');

              this.addEvents();
          },
          addEvents: function() {
              $('body').off('click', '.alert-popup .btn-layer-close, .alert-popup .btn-group a,'+
            '.alert-popup .lyclose, .alert-popup .confirm');
              $('body').on('click', '.alert-popup .btn-layer-close, .alert-popup .btn-group a,'+
                  '.alert-popup .lyclose, .alert-popup .confirm', this.toggle);
              $(window).on('resize', this.resize);
          },
          toggle: function(opts) {
            var t = undefined,
                w = undefined,
                h = undefined;

              $.extend(settings, opts);
                if (opts.type === 'click') {
                    t = opts.currentTarget;
                    if ($(t).attr('w-data') !== undefined) settings.minWidth = Number($(t).attr('w-data'));
                    if ($(t).attr('h-data') !== undefined) settings.minHeight = Number($(t).attr('h-data'));
                };
                focusables = undefined;
                if (clock !== undefined) {
                    clearTimeout(clock);
                    clock = undefined;
            };

            if($('body').hasClass('body-iframe')){}
            else {
                $('body').addClass('no-scroll');
            }

            var args		= arguments[0],
                tgtT		= $(this).text(),
                ckCall	  = $(this).attr('data-callback'),
                ckParm	  = $(this).attr('data-param'),
                tgtCnf	  = $(this).hasClass('confirm'),
                tgtCls	  = $(this).hasClass('lyclose'),
                tgtTcls	 = $(this).hasClass('btn-layer-close'),
                tgtDim	  = $(this).hasClass('alertStyle'),
                  condition   = (this.nodeName === undefined)
                                ? 'M' : (tgtCnf || tgtCls || tgtTcls || tgtDim) ? 'C' : 'A';

              if (typeof args.type === 'click') args.preventDefault();
              switch (condition) {
                  // 열기 이벤트
                  case 'A':
                      triggered = $(this);
                      tgtID = $(this).attr('href');
                    settings.lstTop = -dS.browser.getST();
                      // a 태그에서 함수설정
                    if (ckCall !== undefined) {
                        settings.callback = {};
                        settings.callback.confirm = window[ckCall];
                    };

                    if (ckParm !== undefined) {
                        settings.param = {};
                        settings.param.confirm = (typeof ckParm === 'string') ? JSON.parse(ckParm) : ckParm;
                    };
                      mbAlert.complete();
                  break;
                  // 닫기 이벤트
                  case 'C':
                    if (args.currentTarget.className.search('confirm') !== -1 && mbAlert.validates === false) {
                        return false;
                    };

                    if($('body').hasClass('body-iframe') || $('.modal-layer.on').length > 0 || $('.modal-layer2.on').length > 0 ){}
                    else {
                        $('body').removeClass('no-scroll');
                    }

                      (tgtID) ? $(tgtID).hide() : alert('레이어팝업 ID값을 입력해주세요.');

                      mbAlert.dom.dim.finish().animate({opacity: 0}, 300, 'easeOutQuart', function() {
                          mbAlert.dom.dim.hide();

                          if (triggered !== undefined) triggered.focus();
                          // 확인버튼을 누르고 콜백함수가 존재할 경우에만 호출

                        if (typeof settings.callback === 'object') {
                            if (args.currentTarget.className.search('confirm') !== -1) {
                                var p = (settings.param !== undefined) ? settings.param.confirm : undefined;
                                    if (settings.callback !== undefined && typeof settings.callback.confirm === 'function') settings.callback.confirm(p);
                             };
                            if (args.currentTarget.className.search('lyclose') !== -1) {
                                var p = (settings.param !== undefined) ? settings.param.cancel : undefined;
                                if (settings.callback !== undefined && typeof settings.callback.cancel === 'function') settings.callback.cancel(p);
                            };
                        };
                      });



                      $('.bg-modal').animate({opacity: 1}, 300);


                      return false;
                  break;
                  case 'M':
                    var mCase = 'normal';
                    if (typeof settings.url === 'undefined' || settings.url ==='') mCase = 'dialogue';
                    switch (mCase) {
                        default:
                            console.warn('지정된 레이어 형식이 없습니다.')
                        break;
                        case 'normal':
                            dS.ajx({url:settings.url, dataType:'HTML', method:'get'})
                            .done(function(response) {
                                tgtID = '#'+settings.id;

                                $(mbAlert.dom.root).find('> .'+mbAlert.dom.common).remove();
                                $(mbAlert.dom.root)
                                .append(mbAlert.dom.frame)
                                .find('> .'+mbAlert.dom.common).attr('id', settings.id);
                                $(tgtID).find('header h3').empty().text(settings.title);
                                $(tgtID).find('.layer-con').empty().html(response);

                                mbAlert.complete();
                            })
                            .fail(function(response) {
                                console.log(response);
                            });
                        break;
                        case 'dialogue':
                            var lyBdy = document.body,
                                lyPop = document.querySelector('.alert-popup'),
                                lyCon = '<p class="txt-common">'+ settings.msg.replaceAll('\\n', '<br/>') +'</p><div class="btn-group">'+
                                    '<button type="button" class="button lyclose"></button>'+
                                    '<button type="button" class="button purple confirm"></button>'+
                                '</div>';

                            tgtID = '#'+settings.id;

                            if (lyPop !== null) {
                                lyPop.parentNode.removeChild(lyPop);
                            };
                            lyBdy.insertAdjacentHTML('beforeEnd', mbAlert.dom.frame);
                            lyPop = document.querySelector('.alert-popup');
                            lyPop.setAttribute('id', settings.id);
                            lyPop.querySelector('h3').innerHTML = '알림';
                            lyPop.querySelector('.layer-con').innerHTML = '';
                            lyPop.querySelector('.layer-con').insertAdjacentHTML('beforeEnd', lyCon);

                            // 단일 버튼일 경우
                            if (settings.type === 'single') {
                                lyPop.querySelector('.lyclose').style.display = 'none';
                            } else {
                                // 취소 버튼 이름
                                if (typeof settings.cancel !== 'undefined' && settings.cancel !== '') {
                                    lyPop.querySelector('.lyclose').innerHTML = settings.cancel;
                                } else  {
                                    lyPop.querySelector('.lyclose').innerHTML = '취소';
                                };
                            };
                              // 확인 버튼 이름
                            if (typeof settings.confirm !== 'undefined' && settings.confirm !== '') {
                                lyPop.querySelector('.confirm').innerHTML = settings.confirm;
                            } else  {
                                lyPop.querySelector('.confirm').innerHTML = '확인';
                            };

                            mbAlert.complete();
                        break;
                    };
                  break;
              };
          },
          resize: function() {
              mbAlert.update();
          },
          complete: function() {
              focusables = $(tgtID).find('a, button, input');
              //mbAlert.dom.root.css({'overflow': 'hidden'});
              mbAlert.update();
              mbAlert.dom.dim.css({opacity:0}).show().finish().animate({opacity: 0.7}, 300, 'easeOutQuart');
              $(tgtID).css({opacity: 0}).show().finish().animate({opacity: 1}, 500, 'easeOutQuart');
              clock = setTimeout(function() { focusables.eq(0).focus(); }, 1);
            $('section.layer-popup .button.purple').addClass('confirm'); // 레이어팝업 내 purple 버튼에만 confirm 클래스 추가
			$('.confirm').focus();



          },
          update: function() {
              var tw	= dS.browser.getW(), // 브라우져 너비
                  th	= dS.browser.getH(), // 브라우져 높이
                  tg	= settings.defaultGap, // 브라우저와 레이어 기본 갭
                  thh	= settings.defaultHead, // 레이어 타이틀 영역 높이
                  lw	= settings.minWidth, // 레이어 최소 너비
                  lh	= settings.minHeight, // 레이어 최소 높이
                  cw	= ((tw - tg * 2) > lw + tg * 2), // 브라우져 너비가 레이어 최소 너비보다 큰지 여부
                  cH	= ((th - tg * 2) > lh + tg * 4); // 브라우져 너비가 레이어 최소 너비보다 큰지 여부

              var important = (settings.isImportant == "Y") ? " !important" : "";
            //$(tgtID).find('.layer-con').css({height: });
//            $(tgtID).find('.layer-con').css({height: (cH) ? settings.minHeight : th - tg * 2 - thh });
            $(tgtID).find('.layer-con').attr("style", "height:" + ((cH) ? settings.minHeight : th - tg * 2 - thh) + "px" + important);
            $(tgtID)
            .css({  top: th / 2 - $(tgtID).outerHeight(true) / 2,
                left: (cw) ? tw / 2 - lw / 2 : tw / 2 - (tw - tg * 2) / 2,
                width: (cw) ? lw : tw - tg * 2
            });
          }
      }
  }());

/**
*   PC 레이어팝업 호출 메서드
*   ajax 수동호출 : mbLayer.toggle({아이디:'layer_ex', url:'/html/test/external.html', title:'레이어팝업 수동호출 테스트', minWidth:350 });
*   mbLayer.toggle({아이디:'layer_ex', msg:str, confirm:'테스트', cancel:'닫기', callback:null, minHeight:200, type:'' });
*   mbLayer.toggle({
        아이디:'layer_nm',
        msg:'메시지 삽입',
      confirm: '확인',
      cancel: '취소',
        callback:{
              confirm: function() { console.log('normal layer confirm') },
              cancel:	function() { console.log('normal layer cancel') }
        },
    param:{
        confirm: 'normal',
          cancel:	{a:'aa'}
    },
        width: 300,
        minHeight:200,
        type:'' //: single or ''
    });
    mbLayer.validates
**/
var mbLayer = mbLayer || {};
mbLayer = (function() {
    'use strict';
       var self	 = undefined,
        dom	  = undefined,
        settings = {
               defaultGap:		10, // 브라우저와 레이어 기본 갭
               defaultHead:	60, // 레이어 타이틀 영역 높이
               minWidth:		350, // 레이어 최소 너비
               minHeight:		300 // 레이어 최소 높이
           },
           triggered	= undefined,
           tgtID		= undefined,
           clock		= undefined,
           focusables   = undefined;
       return {
           dom: {
               common:	'layer-popup',
               frame:	'<section class="layer-popup dynamic">'+
                           '<div class="wrap">'+
                               '<header class="layer-header">'+
                                   '<h3 class="tit"></h3>'+
                               '</header>'+
                               '<div class="layer-con"></div>'+
                               '<button type="button" class="btn-layer-close">레이어 닫기</button>'+
                           '</div>'+
                       '</section>',
               dim:	'<div class="normalStyle" style="display:none;position:fixed;top:0;left:0;background:#000;opacity:0.7;text-indent:-9999px;'+
                        'width:100%;height:100%;z-index:100;">닫기</div>',
               root:	'body'
           },
        validates: true,
           init: function(opts) {
               self	= this;
               dom	 = self.dom;
               if (typeof opts === 'object') $.extend(settings, opts);
               this.setUI();
           },
           setUI: function() {
               this.dom.root = $('body');

               if ($('.normalStyle').length === 0) this.dom.root.append(mbLayer.dom.dim);
               this.dom.dim = $('.normalStyle');

               this.addEvents();
           },
           addEvents: function() {
               $('body').on('click', 'a.btn-layer-open', this.toggle);
               $('body').on('click', '.layer-popup .btn-layer-close, .layer-popup .btn-group a,'+
                   '.normalStyle, .layer-popup .lyclose, .layer-popup .confirm', this.toggle);
               $(window).on('resize', this.resize);
           },
           toggle: function(opts) {
               var t = undefined,
                   w = undefined,
                   h = undefined;

               $.extend(settings, opts);
                if (opts.type === 'click') {
                    t = opts.currentTarget;
                    if ($(t).attr('w-data') !== undefined) settings.minWidth = Number($(t).attr('w-data'));
                    if ($(t).attr('h-data') !== undefined) settings.minHeight = Number($(t).attr('h-data'));
               };

               focusables = undefined;
               if (clock !== undefined) {
                   clearTimeout(clock);
                   clock = undefined;
               };

            if($('body').hasClass('body-iframe')){}
            else {
                $(mbLayer.dom.root).addClass('no-scroll');
            }

            var args		= arguments[0],
                tgtT		= $(this).text(),
                ckCall	  = $(this).attr('data-callback'),
                ckParm	  = $(this).attr('data-param'),
                tgtCnf	  = $(this).hasClass('confirm'),
                tgtCls	  = $(this).hasClass('lyclose'),
                tgtTcls	 = $(this).hasClass('btn-layer-close'),
                tgtDim	  = $(this).hasClass('normalStyle'),
                   condition   = (this.nodeName === undefined)
                                ? 'M' : (tgtCnf || tgtCls || tgtTcls || tgtDim) ? 'C' : 'A';

               if (typeof args.type === 'click') args.preventDefault();
               switch (condition) {
                   // 열기 이벤트
                   case 'A':
                       triggered = $(this);
                       tgtID = $(this).attr('href');
                    settings.lstTop = -dS.browser.getST();
                    // a 태그에서 함수설정
                    if (ckCall !== undefined) {
                        settings.callback = {};
                        settings.callback.confirm = window[ckCall];
                    };

                    if (ckParm !== undefined) {
                        settings.param = {};
                        settings.param.confirm = (typeof ckParm === 'string') ? JSON.parse(ckParm) : ckParm;
                    };
                       mbLayer.complete();
                   break;
                   // 닫기 이벤트
                   case 'C':
                    if (args.currentTarget.className.search('confirm') !== -1 && mbLayer.validates === false) {
                        return false;
                    };
                       (tgtID) ? $(tgtID).hide() : alert('레이어팝업 ID값을 입력해주세요.');

                       mbLayer.dom.dim.finish().animate({opacity: 0}, 300, 'easeOutQuart', function() {
                           mbLayer.dom.dim.hide();

                           if (triggered !== undefined) triggered.focus();
                        // 확인버튼을 누르고 콜백함수가 존재할 경우에만 호출


                        if($('body').hasClass('body-iframe')){}
                        else {
                            $('body').removeClass('no-scroll');
                        }

                        if (typeof settings.callback === 'object') {
                            if (args.currentTarget.className.search('confirm') !== -1) {
                                var p = (settings.param !== undefined) ? settings.param.confirm : undefined;
                                if (settings.callback !== undefined && typeof settings.callback.confirm === 'function') settings.callback.confirm(p);
                            };
                            if (args.currentTarget.className.search('lyclose') !== -1) {
                                var p = (settings.param !== undefined) ? settings.param.cancel : undefined;
                                if (settings.callback !== undefined && typeof settings.callback.cancel === 'function') settings.callback.cancel(p);
                            };
                        };
                       });
                       return false;
                   break;
                   case 'M':
                    var mCase = 'normal';
                    if (typeof settings.url === 'undefined' || settings.url ==='') mCase = 'dialogue';
                    if (document.querySelector('.layer-popup.dynamic') !== null) {
                        document.querySelector('.layer-popup.dynamic').parentNode.removeChild(document.querySelector('.layer-popup.dynamic'));
                    };
                    switch (mCase) {
                        default:
                            console.warn('지정된 레이어 형식이 없습니다.')
                        break;
                        case 'normal':
                            var lyBdy = document.body,
                                lyPop = undefined;

                            dS.ajx({url:settings.url, dataType:'HTML', method:'get'})
                            .done(function(response) {
                                tgtID = '#'+settings.id;

                                // $(mbLayer.dom.root).find('> .'+mbLayer.dom.common).remove();
                                // $(mbLayer.dom.root)
                                // .append(mbLayer.dom.frame)
                                // .find('> .'+mbLayer.dom.common).attr('id', settings.id);
                                // $(tgtID).find('header h3').empty().text(settings.title);
                                // $(tgtID).find('.layer-con').empty().html(response);
                                lyBdy.insertAdjacentHTML('beforeEnd', mbLayer.dom.frame);
                                lyPop = document.querySelector('.layer-popup.dynamic');
                                lyPop.setAttribute('id', settings.id);
                                lyPop.querySelector('h3').innerHTML = '일반레이어팝업';
                                lyPop.querySelector('.layer-con').innerHTML = '';
                                lyPop.querySelector('.layer-con').insertAdjacentHTML('beforeEnd', response);

                                mbLayer.complete();
                            })
                            .fail(function(response) {
                                console.log(response);
                            });
                        break;
                        case 'dialogue':
                            var lyBdy = document.body,
                                lyPop = undefined,
                                lyCon = '<p class="txt-common">'+ settings.msg.replace('\\n', '<br/>') +'</p><div class="btn-group">'+
                                        '<button type="button" class="button lyclose"></button>'+
                                        '<button type="button" class="button purple confirm"></button>'+
                                       '</div>'

                            tgtID = '#'+settings.id;

                            lyBdy.insertAdjacentHTML('beforeEnd', mbLayer.dom.frame);
                            lyPop = document.querySelector('.layer-popup.dynamic');
                            lyPop.setAttribute('id', settings.id);
                            lyPop.querySelector('h3').innerHTML = '일반레이어팝업';
                            lyPop.querySelector('.layer-con').innerHTML = '';
                            lyPop.querySelector('.layer-con').insertAdjacentHTML('beforeEnd', lyCon);

                            // 단일 버튼일 경우
                            if (settings.type === 'single') {
                                lyPop.querySelector('.lyclose').style.display = 'none';
                            } else {
                                // 취소 버튼 이름
                                if (typeof settings.cancel !== 'undefined' && settings.cancel !== '') {
                                    lyPop.querySelector('.lyclose').innerHTML = settings.cancel;
                                } else  {
                                    lyPop.querySelector('.lyclose').innerHTML = '취소';
                                };
                            };
                            // 확인 버튼 이름
                            if (typeof settings.confirm !== 'undefined' && settings.confirm !== '') {
                                lyPop.querySelector('.confirm').innerHTML = settings.confirm;
                            } else  {
                                lyPop.querySelector('.confirm').innerHTML = '확인';
                            };

                            mbLayer.complete();
                        break;
                    };
                   break;
               };
           },
           resize: function() {
               mbLayer.update();
           },
           complete: function() {
               focusables = $(tgtID).find('a, button, input');
               //mbLayer.dom.root.css({'overflow': 'hidden'});
               mbLayer.update();
               mbLayer.dom.dim.css({opacity:0}).show().finish().animate({opacity: 0.7}, 300, 'easeOutQuart');
               $(tgtID).css({opacity: 0}).show().finish().animate({opacity: 1}, 500, 'easeOutQuart');
               clock = setTimeout(function() { focusables.eq(0).focus(); }, 1);
               //$('section.layer-popup .button.purple').addClass('confirm'); // 레이어팝업 내 purple 버튼에만 confirm 클래스 추가
           },
           update: function() {
               var tw	= dS.browser.getW(), // 브라우져 너비
                   th	= dS.browser.getH(), // 브라우져 높이
                   tg	= settings.defaultGap, // 브라우저와 레이어 기본 갭
                   thh	= settings.defaultHead, // 레이어 타이틀 영역 높이
                   lw	= settings.minWidth, // 레이어 최소 너비
                   lh	= settings.minHeight, // 레이어 최소 높이
                   cw	= ((tw - tg * 2) > lw + tg * 2), // 브라우져 너비가 레이어 최소 너비보다 큰지 여부
                   cH	= ((th - tg * 2) > lh + tg * 4); // 브라우져 너비가 레이어 최소 너비보다 큰지 여부

               //$(tgtID).find('.layer-con').css({height: });
            $(tgtID).find('.layer-con').css({height: (cH) ? settings.minHeight : th - tg * 2 - thh });
            $(tgtID)
               .css({  top: th / 2 - $(tgtID).outerHeight(true) / 2,
                left: (cw) ? tw / 2 - lw / 2 : tw / 2 - (tw - tg * 2) / 2,
                width: (cw) ? lw : tw - tg * 2
            });
           }
       }
}());

 // 테스트용 - 삭제 예
 function testCall(opts) {
     console.log('testCall', opts);
 }

/**
 * PC 영화 롤오버 공통 인스턴스
 * 예) var movieOn = new addOnMotion({parent:'부모 dom클래스', target:'롤오버될 dom클래스', top:롤오버시 타겟 top 값});
 * setting.ease : easing 옵션
 * setting.duration : easing 속도
 **/
var addOnMotion = function(opts) {
    this.setting = {
        ease: 'easeOutQuart',
        duration: 500
    };
    $.extend(this.setting, opts);

    this.init();
};
addOnMotion.prototype.init = function() {
    var me = this,
        st = me.setting,
        pr = st.parent,
        tg = st.target;

    if ($(tg).length === 0) return false;

    st.bottom = Math.abs($(tg).css('top').split('px')[0]);
    $('body').on('mouseenter mouseleave', pr, me.toggle.bind(this, st));
};
addOnMotion.prototype.toggle = function() {
    var ar = Array.prototype.slice.call(arguments),
        st = ar[0],
        tg = st.target,
        te = ar[1].type,
        mt = $(ar[1].currentTarget).find(tg),
        cd = (te === 'mouseenter') ? st.top : st.bottom;

    $(mt).finish().animate({top:cd}, st.duration, st.ease);
};

/**
 * PC on클래스 토글 공통 인스턴스
 * 예) var movieOn = new toggleOnOff({target:적용할 dom클래스, title:{on:'활성화시 제목', off:'비활성화시 제목'}, identifier:toggle을 작동시킬 클래스명});
 **/
var toggleOnOff = function(opts) {
    this.setting = {};
    $.extend(this.setting, opts);

    this.init();
};
toggleOnOff.prototype.init = function() {
    var me = this,
        st = me.setting,
        tg = st.target;

    $('body').off('click', tg);
    $('body').on('click', tg, me.toggle.bind(this, st));
};
toggleOnOff.prototype.toggle = function(e) {
    var ar = Array.prototype.slice.call(arguments),
        st = ar[0],
        ce = ar[1],
        id = st.identifier;

    ce.preventDefault();

    ($(st.target).attr('class').search(' '+id+'') === -1)
        ? $(st.target).addClass(''+id+'').attr('title', st.title.on)
        : $(st.target).removeClass(''+id+'').attr('title', st.title.off);
};

/**
 * PC 게시글 show/hide 토글 공통 메서드
 * 예) atcToggle.init({target:적용할 dom클래스, identifier:toggle을 작동시킬 클래스명});
 **/
var atcToggle = atcToggle || {};
atcToggle = (function() {
    'use strict';
    var setting = {};
    return {
        dom: {
            root: 'body'
        },
        init: function(opts) {
            if (typeof opts !== 'undefined') $.extend(setting, opts);
            if ($('.'+setting.target).length > 0) this.setUI();
        },
        setUI: function() {
            this.dom.head = '.'+setting.target+' > '+ setting.nodeName +' div.qut';
            this.dom.foot = '.'+setting.target+' > '+ setting.nodeName +' div.awn';

            $(this.dom.head).removeClass('on');
            $(this.dom.foot).hide();

            this.addEvents();
        },
        addEvents: function() {
            $(this.dom.root).on('click', this.dom.head, this.toggle);
        },
        toggle: function(e) {
            e.preventDefault();
            console.log($(this));
            $(atcToggle.dom.head).removeClass('on');
            $(atcToggle.dom.foot).hide();

            $(this).addClass('on');
            $(this).next('div.awn').show();
            /* 애니메이션 필요시
            var tg = $(this).next('ul');
                th = tg.outerHeight(true);
            tg.css({height:0, 'padding-top':0, 'padding-bottom':0, 'overflow':'hidden', 'border-bottom': 'none'});
            tg.show().finish().animate({'padding-top': 15,}, 50, 'linear', function() {
                tg.animate({height: th, 'padding-bottom': 15}, 450, 'easeOutQuart', function() {
                    tg.css({'border-bottom': '1px solid #eaeaea'});
                });
            });
            */
        }
    };
}());


/**
 * PC 영화 선택 토글 공통 메서드
 * 예)
 **/
var selMovieToggle = selMovieToggle || {};
selMovieToggle = (function() {
    'use strict';
    var setting = {};
    return {
        dom: {
            checked:	'<a href="" class="post-check-area" title="선택">'+
                            '<div class="post-checked"><img src="../../../static/pc/images/common/ico/ico-post-checked.png" alt=""></div>'+
                        '</a>'
        },
        init: function(opts) {
            if (typeof opts !== 'undefined') $.extend(setting, opts);
            if ($('.'+setting.target).length > 0) this.setUI();
        },
        setUI: function() {
            this.dom.tgt = $('.'+setting.target).find('> li');
            this.dom.tgt.removeClass('on');

            this.addEvents();
        },
        addEvents: function() {
            $('body').off('click', '.'+setting.target+' > li');
            $('body').on('click', '.'+setting.target+' > li', this.toggle);
        },
        toggle: function(e) {
            e.preventDefault();

            var condition = ($(this).attr('class') === 'on') ? true : false;

            selMovieToggle.dom.tgt.removeClass('on');
            $(this).find('.post-check-area').remove();
            (condition) ? $(this).removeClass('on') : $(this).addClass('on').prepend(selMovieToggle.dom.checked);
        }
    }
}());

/**
 * PC 영화 무비포스트 리스트 포커스 이벤트
 * 예) mbMoviePsFocus.init({target:'post-list'});
 **/
var mbMoviePsFocus = mbMoviePsFocus || {};
mbMoviePsFocus = (function() {
    'use strict';
    var setting = {};
    return {
        dom: {
            body:	   'body',
            root:	   undefined,
            comm:	   undefined,
            indv:	   undefined,
            link:	   undefined
        },
        init: function(opts) {
            if (typeof opts !== 'undefined') $.extend(setting, opts);
            if ($('.'+setting.target).length > 0) this.setUI();
        },
        setUI: function() {
            this.dom.root = '.'+setting.target;
            this.dom.comm = '.'+setting.target + ' .post-box';
            this.dom.indv = '.'+setting.target + ' .post-box > .post-content';
            this.dom.link = '.'+setting.target + ' .post-box > .post-link';

            $(this.dom.comm).removeClass('on');

            this.addEvents();
        },
        addEvents: function() {
            $(this.dom.body).on('focusin focusout', this.dom.indv, this.focusPost);
            $(this.dom.body).on('focusin focusout', this.dom.link + '', this.focusLink);
        },
        focusPost: function(e) {
            var tgt = $(e.currentTarget).parent(),
                typ = e.type;

            if (typ === 'focusin') tgt.addClass('on');
            if (typ === 'focusout' && tgt.find('.post-link').css('left') === '0px') tgt.removeClass('on');
        },
        focusLink: function(e) {
            var tgt = $(e.currentTarget).parent(),
                typ = e.type;

            if (typ === 'focusin') tgt.addClass('on');
            if (typ === 'focusout') tgt.removeClass('on');
        }
    };
}());

/**
 * PC 영화 무비포스트 좌우스크롤 고정이벤트
 * 예) mbPostScroll.init({target:'user-post-btn'});
 **/
var mbPostScroll = mbPostScroll || {};
mbPostScroll = (function() {
    'use strict';
    var self	=   undefined,
        dom	 =   undefined,
        timeout =   null,
        setting =   {
                        int: undefined
                    };
    return {
        dom: {
            body:   'body',
            cont:   '.user-post-case',
            iner:   '.inner-wrap'
        },
        init: function(opts) {
            self	= this;
            dom	 = self.dom;
            if (typeof opts !== 'undefined') $.extend(setting, opts);
            if ($('.'+setting.target).length > 0) this.setUI();
        },
        setUI: function() {
            dom.btns = '.' + setting.target + ' .left-btn, ' + '.' + setting.target + ' .right-btn';
            dom.inpt = '.' + setting.target + ' #input-comment:eq(0) .input-textarea';

            setting.int = 0;
            setting.iwt = $(dom.iner).width();
            setting.gap = 30;
            setting.fxH = 500;

            $(dom.btns).css({
                top:500
            });

            //mbPostScroll.repo.left();
            this.addEvents();
        },
        addEvents: function() {
            $(window).on('scroll', self.scrl);
            $(window).on('resize', self.resize);
            $(dom.body).on('click', dom.cont+' a.comment', self.comment);
        },
        comment: function(e) {
            e.preventDefault();

            if (timeout !== null) clearTimeout(timeout);
            timeout = null;
            timeout = setTimeout(function() {
                $(dom.inpt).focus();
            }, 1);
        },
        repo: {
            left: function() {
                var lWdth   = dS.browser.getW(),
                    lTgt	= $(dom.btns);

                (lWdth < setting.iwt) ? lTgt.css({ left:0 }) : lTgt.css({ left:lWdth / 2 - lTgt.outerWidth(true) / 2 });
            }
        },
        resize: function() {
            //mbPostScroll.repo.left();
        },
        scrl: function() {
            var lStop   = dS.browser.getST(),
                lTgt	= $(dom.btns),
                lPos	= $(dom.cont);

            /*
            if (lStop <= setting.fxH) {
                lTgt.css({'pointer-events':'auto'});
                lTgt.finish().animate({ top:setting.fxH, opacity:1 }, 100, 'easeOutQuart');
            } else if (lStop > lPos.outerHeight(true) - setting.fxH / 2 - 150) {
                lTgt.finish().animate({ opacity:0 }, 300, 'easeOutQuart', function() {
                    lTgt.css({'pointer-events':'none'});
                });
            } else {
                setting.int++;
                if (setting.int <= 1) {
                    lTgt.css({ 'pointer-events':'auto', top:setting.fxH, opacity:1 });
                } else {
                    lTgt.css({ 'pointer-events':'auto'});
                    lTgt.finish().animate({ top:setting.fxH, opacity:1 }, 300, 'easeOutQuart');
                };
            };
            */


            var srtPosTop = Math.floor($('.comment-write').offset().top)-300,
                winScrTop = Math.floor($(window).scrollTop())+350;

            if (srtPosTop <= winScrTop)
            {
                $('.left-btn, .right-btn').stop().animate({ opacity : "0" },60, function(){
                    lTgt.css({'pointer-events':'none'});
                });
            }else{
                $('.left-btn, .right-btn').stop().animate({ opacity : "1" },60, function(){
                    lTgt.css({'pointer-events':'auto'});
                });
            }
        }
    }
}());

/**
 * PC 영화 무비포스트 상단 랭킹 포커스 이벤트
 * 예) mbMovieRankFocus.init({target:['post-lank li > a','mypost-box > a']});
 **/
var mbMovieRankFocus = mbMovieRankFocus || {};
mbMovieRankFocus = (function() {
    'use strict';
    var setting = {};
    return {
        dom: {
            body:	   'body',
            group:	  undefined,
            indv:	   undefined
        },
        init: function(opts) {
            if (typeof opts !== 'undefined') $.extend(setting, opts);

            this.setUI();
        },
        setUI: function() {
            this.dom.group = setting.target;

            this.addEvents();
        },
        addEvents: function() {
            this.dom.group.forEach(function(val, key) {
                $('.'+val).off('focus').on('focus', mbMovieRankFocus.focus);
            });
        },
        focus: function(e) {
            mbMovieRankFocus.dom.group.forEach(function(val, key) {
                $('.'+val).parent().find('.post-count').css({ opacity:1 });
                $('.'+val).parent().find('.reset.lank').css({ opacity:1 });
            });
            $(e.currentTarget).parent().find('.post-count').css({ opacity:0 });
            $(e.currentTarget).parent().find('.reset.lank').css({ opacity:0 });
        }
    };
}());

/**
 * 영화 댓글신고 툴팁 모듈
 * 예) mbMovieTip.init({target:'post-top-area'});
 **/
var mbMovieTip = mbMovieTip || {};
mbMovieTip = (function() {
    'use strict';
    var setting =   {
                        timeout:	null,
                        tooltip:	undefined,
                        tooltipX:   undefined
                    };
    return {
        dom: {
            body:	   'body',
            cont:	   '.comment-list', // .user-post-box
            root:	   '.comment-box',
            post:	   '.user-post-box',
            comt:	   '.comment-list',
            tgt:		undefined,
            focused:	undefined,
            focusables: undefined,
            default:	'.balloon-space',
            cmt:		'<div class="balloon-space">'+
                            '<div class="balloon-cont">'+
                                '<!-- to 개발 : 일반사용자일때 나오는 창-->'+
                                '<div class="user" style="display:none;">'+
                                    '<p class="reset a-c">스포일러 및 욕설/비방하는<br />내용이 있습니까?</p>'+
                                    '<button type="button">스포일러신고 <i class="iconset ico-arr-right-green"></i></button>'+
                                '</div>'+
                                '<!-- to 개발 : 글쓴이 본인일때 나오는 창-->'+
                                '<div class="writer" style="display:none;">'+
                                    '<button type="button">수정</button>'+
                                    '<button type="button">삭제</button>'+
                                '</div>'+
                                '<div class="btn-close"><a href="#" title="닫기"><img src="../../../static/pc/images/common/btn/btn-balloon-close.png" alt="닫기"></a></div>'+
                            '</div>'+
                        '</div>'
        },
        init: function(opts) {
            if (typeof opts !== 'undefined') $.extend(setting, opts);
            if ($('.'+setting.target).length > 0) this.setUI();
        },
        setUI: function() {
            if ($(this.dom.default).length > 0) $(this.dom.default).remove();

            this.dom.btn = ' .btn-alert';
            this.dom.cls = this.dom.default + ' .btn-close a';
            //$(this.dom.cont).prepend(this.dom.cmt); 버튼 위치가 상이함으로 prepend 위치 변경 필요
            $(this.dom.default).hide();

            this.addEvents();
        },
        addEvents: function() {
            $(this.dom.body).on('click', this.dom.btn, this.toggle.bind(this, setting));
            $(this.dom.body).on('click', this.dom.cls, this.toggle.bind(this, setting));
            $(this.dom.body).on('focusout', this.dom.cls, this.out);
            $(window).on('resize', this.resize);
        },
        resize: function(e) {
            var ct = $(mbMovieTip.dom.tgt),
                df = $(mbMovieTip.dom.default);

            if (df.length > 0) df.css({ left:ct.offset().left - df.outerWidth(true) });
        },
        toggle: function(opts) {
            var ar = arguments,
                op = ar[0],
                ce = ar[1],
                ow = undefined, // 툴팁 너비
                oh = undefined, // 툴팁 높이
                ot = undefined, // 툴팁 x
                ol = undefined, // 툴팁 y
                dp = 10,		// 기본 gap
                ct = undefined, // 클릭된 버튼
                pt = undefined, // 클릭된 버튼 소속
                cn = undefined, // 클릭된 버튼 종류
                df = undefined; // 툴팁

            ce.preventDefault();

            ct = $(ce.currentTarget);
            pt = ct.parent().parent().attr('class');
            cn = ct[0].nodeName;
            $(mbMovieTip.dom.body).find('.balloon-space').remove();

            //(pt === 'post-top-area') ? $(mbMovieTip.dom.post).prepend(this.dom.cmt) : $(mbMovieTip.dom.comt).prepend(this.dom.cmt);
            $(mbMovieTip.dom.body).prepend(this.dom.cmt);
            df = $(mbMovieTip.dom.default);

            switch (cn) {
                // 툴팁 열기 이벤트
                case 'BUTTON':
                    mbMovieTip.dom.tgt = ct;
                    setting.tootipX = ct.offset().top;
                    ot = ct.offset().top;
                    ol = ct.offset().left;

                    df.find('.user, .writer').hide();
                    df.find('.' + setting.option).show();
                    df.css("cssText", "right:auto!important;z-index:11;");
                    ow = $(mbMovieTip.dom.default).outerWidth(true);
                    oh = $(mbMovieTip.dom.default).outerHeight(true);
                    df.css({ top:ot - (oh / 2) + 10, left:ol - ow, width: ow + 1 }).show();

                    mbMovieTip.dom.focusables = df.find('a:visible, button:visible');
                    mbMovieTip.dom.focusables.eq(0).focus();
                break;
                // 툴팁 닫기 이벤트
                case 'A':
                    df.hide();
                    mbMovieTip.out();
                break;
            }
        },
        out: function(e) {
            setting.timeout = null;
            clearTimeout(setting.timeout);

            setting.timeout = setTimeout(function() {
                $(mbMovieTip.dom.tgt).focus();
                $(mbMovieTip.dom.default).hide();
            }, 0);
        }
    }
}());

/**
 * 영화 갤러리 모듈
 * 예) mbThumGal.init({target:'stillcut-slide', effect:'flash'});
 * effect: '', 'sliding', 'flash' 중 택일
 **/
var mbThumGal = mbThumGal || {};
mbThumGal = (function() {
    'use strict';
    var self	=   undefined,
        dom	 =   undefined,
        setting =   new Object(),
        target  =   {
                        ctn	 : 0, // 현재 선택된 썸네일
                        ltn	 : undefined, // 마지막에 선택된 썸네일
                        tdft	: 4, // 썸네일 노출 디폴트 갯수
                        tdfW	: 1020, // 쎔네일 노출 마스크 너비
                        tlmt	: undefined, // 썸네일 좌측으로 사라짐 방지용
                        dly	 : null, // effect 타임아웃
                        subT	: false // 자막
                    }
    return {
        dom: {
            body	: 'body',
            screen  : '<div class="scrn" style="position:absolute;width:100%;opacity:0;background:#fff;z-index:2;"></div>'
        },
        init: function(opts) {
            self	= this;
            dom	 = self.dom;
            if (typeof opts !== 'undefined') $.extend(setting, opts);
            if ($('.'+setting.target).length > 0) this.setUI();
        },
        setUI: function() {
            dom.root = setting.target;
            dom.titl = '.' + dom.root + ' .tit';
            dom.mask = '.' + dom.root + ' .slide-list';
            dom.list = '.' + dom.root + ' .slide-list > ul';
            dom.cell = '.' + dom.root + ' .slide-list > ul li';
            dom.btns = '.' + dom.root + ' .btn-prev, '+'.' + dom.root + ' .btn-next';
            dom.btpr = '.' + dom.root + ' .btn-prev';
            dom.btnt = '.' + dom.root + ' .btn-next';
            dom.hovr = '.movie-detail';
            //console.log('bind:', self);
            if ($(dom.cell).length <= 0) {
                console.warn('슬라이딩을 적용할 이미지가 없습니다.')
                return false;
            };

            $(dom.btpr).addClass('disabled');

            target.wdt = $(dom.cell).outerWidth(true);
            target.len = $(dom.cell).length; // 동적 업데이트 필요
            target.tlmt = (target.len - 1) - target.tdft; // 동적 업데이트 필요

            $(dom.mask).css({ 'overflow':'hidden' });
            $(dom.list).css({ position:'relative', width:target.wdt * target.len, 'overflow':'' }); // 동적 업데이트 필요


            dom.thumCaption  = '.' + dom.root + ' .thum-caption';

            dom.tmask = '.' + dom.root + ' .thumb-list';
            dom.tlist = '.' + dom.root + ' .thumb-list > ul';
            dom.tthum = '.' + dom.root + ' .thumb-list > ul li';
            dom.imgdt = '.' + dom.root + ' .thumb-list > ul li img';

            dom.subTt = '.' + dom.root + ' .a-c'; // 자막
            dom.subBt = '.' + dom.root + ' .btn-more button'; // 자막버튼

            if ($(dom.cell).length !== $(dom.tthum).length) {
                console.warn('slide-list와 thumb-list 이미지 개수가 다릅니다. 갤러리 모듈을 실행할 수 없습니다.');
                return false;
            };

            target.twdt = $(dom.tthum).width(); // 동적 업데이트 필요
            target.tgap = $(dom.tthum).outerWidth(true) - $(dom.tthum).width();
            target.tsld = target.twdt + target.tgap;

            $(dom.titl).empty().html('<span>' + $(dom.imgdt).eq(0).attr('alt') + '</span>');

            $(dom.thumCaption).empty().html($(dom.imgdt).eq(0).attr('desc')); // 최태훈 임시작업

            $(dom.tthum).css({ width:target.twdt });  // 소수점 제거
            $(dom.tmask).css({ position:'relative', left:40, width:target.tdfW, 'overflow':'hidden' });
            $(dom.tlist).css({ position:'absolute', width:target.tsld * target.len, 'padding':0 }); // 동적 업데이트 필요

            $(dom.btpr).css({ opacity:0.5, 'cursor':'default' });
            $(dom.subTt).hide();

            $(dom.mask).prepend(dom.screen);

            self.addEvents();
        },
        addEvents: function() {
            $(dom.body).on('click', dom.btns, self.slide.init); // 좌우 화살표 클릭
            $(dom.body).on('click', dom.tthum, self.slide.thumb); // 썸네일 클릭
            $(dom.body).on('focus focusout', dom.tthum, self.slide.focus); // 썸메일 포커스 인 아웃
            $(dom.body).on('mouseenter mouseleave', dom.tthum, self.slide.enter); // 썸메일 마우스 인 아웃
            $(dom.body).on('click', dom.subBt, self.subTt); // 자막 여닫기
        },
        subTt: function(e) {
            e.preventDefault();

            var lTgt = $(e.currentTarget),
                lStt = $(dom.subTt),
                lNod = '<i class="iconset ico-btn-more-arr"></i>';

            (target.subT) ? target.subT = false : target.subT = true;
            switch (target.subT) {
                case true:
                    lStt.show();
                    lTgt.empty().html('자막닫기' + lNod);
                    lTgt.find('i').css({ transform: 'rotate(180deg)' });
                break;
                case false:
                    lStt.hide();
                    lTgt.empty().html('자막보기' + lNod);
                break;
            };
        },
        update: {
            // 리스트 좌/위 끝 도달 시 버튼 비활성화
            csr: function() {
                if (target.ctn === 0) {
                    $.each($(dom.btns), function(key, val) {
                        if ($(val).attr('class') === 'btn-prev') $(val).addClass('disabled').css({ opacity:0.5, 'cursor': 'default' });
                    })
                } else if (target.ctn === target.len - 1) {
                    $.each($(dom.btns), function(key, val) {
                        if ($(val).attr('class') === 'btn-next') $(val).addClass('disabled').css({ opacity:0.5, 'cursor': 'default' });
                    })
                } else {
                    $(dom.btns).removeClass('disabled').css({ opacity: 1, 'cursor': 'pointer' })
                };
            },
            // 리스트 추가 시 썸네일 갯수 및 전체 너비 업데이트
            sld: function() {
                target.len = $(dom.cell).length; // 동적 업데이트 필요
                target.tlmt = (target.len - 1) - target.tdft; // 동적 업데이트 필요

                $(dom.list).css({ width:target.wdt * target.len }); // 동적 업데이트 필요
                $(dom.tlist).css({ width:target.tsld * target.len });

                self.update.csr();
            }
        },
        slide: {
            init: function(e) {
                e.preventDefault();

                var lTgt =  $(e.currentTarget);

                if (lTgt.hasClass('disabled')) return false;

                var dir = $(e.currentTarget).attr('class').split('-')[1], // 마우스 방향
                    thm = undefined, // 이미지 데이터
                    tit = undefined, // 제목
                    des = undefined; // 설명

                switch (dir) {
                    case 'prev':
                        (target.ctn <= 0) ? target.ctn = 0 : target.ctn--;
                    break;
                    case 'next':
                        (target.ctn >= target.len - 1) ? target.ctn = target.len - 1 : target.ctn++;
                    break;
                };

                thm = $(dom.imgdt).eq(target.ctn);
                tit = thm.attr('alt');
                des = thm.attr('desc');

                $(dom.titl).empty().html('<span>' + tit + '</span>');
                $(dom.thumCaption).empty().html(des); // 최태훈 임시작업

                self.slide.ignite(dir);
            },
            focus: function(e) {
                var lWrp	= $(dom.tlist),
                    lIdx	= undefined,
                    lBdx	= undefined,
                    lTgt	= $(e.currentTarget),
                    lTyp	= e.type,
                    lLst	= $(self.dom.tlist),
                    lDir	= undefined;

                switch (lTyp) {
                    case 'focusin':
                        lBdx = (target.ltn !== undefined) ? target.ltn : 0;
                        target.ctn = target.ltn = lIdx = lTgt.index();

                        ((lBdx - lIdx) === 1) ? lDir = 'prev' : lDir = 'next';

                        lWrp.find(dom.hovr).hide();
                        lTgt.find(dom.hovr).show();

                        self.slide.move(lDir);
                    break;
                    case 'focusout':
                        lTgt.find(dom.hovr).hide();
                    break;
                };
            },
            enter: function(e) {
                var lWrp	= $(dom.tlist),
                    lTgt	= $(e.currentTarget),
                    lTyp	= e.type;

                switch (lTyp) {
                    case 'mouseenter':
                        lWrp.find(dom.hovr).hide();
                        lTgt.find(dom.hovr).show();
                    break;
                    case 'mouseleave':
                        lTgt.find(dom.hovr).hide();
                    break;
                };
            },
            thumb: function(e) {
                e.preventDefault();

                var cid = $(e.currentTarget).index();

                target.ctn = cid;
                self.slide.ignite();
            },
            ignite: function(dir) {
                var bscrn   = $('.' + dom.root).find('.scrn'),
                    bList   = $(dom.list),
                    tThmb   = $(dom.tthum);

                switch (setting.effect) {
                    case 'flash':
                        target.dly = null;
                        clearTimeout(target.dly);

                        bscrn.css({ opacity:1 });
                        bList.css({ left:-target.ctn * target.wdt });
                        bscrn.stop();

                        target.dly = setTimeout(function() {
                            bscrn.finish().animate({ opacity:0 }, 1400, 'easeOutQuart');
                        }, 100);
                    break;
                    case 'sliding':
                        bList.finish().animate({ left:-target.ctn * target.wdt }, 700, 'easeOutQuart');
                    break;
                    default:
                        bList.css({ left:-target.ctn * target.wdt });
                    break;
                };

                self.slide.move(dir);
            },
            move: function(dir) {
                var lList   = $(dom.tlist),
                    lThmb   = $(dom.tthum);

                /* 썸네일 한개씩 이동 시
                (target.ctn - 1 >= target.tlmt)
                    ? lList.css({ left:-(target.tlmt + 1) * target.tsld })
                    : lList.css({ left:-target.ctn * target.tsld });
                */
                if (target.ctn % target.tdft === 0 && dir === 'next') {
                    lList.animate({ left:-(target.ctn / target.tdft) * target.tdfW }, 700, 'easeOutQuart');
                };
                if ((target.ctn % target.tdft) === target.tdft - 1 && dir === 'prev') {
                    lList.animate({ left:-Math.floor(target.ctn / target.tdft) * target.tdfW }, 700, 'easeOutQuart');
                };

                lThmb.removeClass('on');
                lThmb.eq(target.ctn).addClass('on');
                $(dom.subTt).html(lThmb.eq(target.ctn).find('a').data('cn').replaceAll('\n', '<br>')); //자막추가
                self.update.csr();
            }
        }
    };
}());

/**
 * 스와이핑/롤링 오브젝트
 * swobj 클래스에 자동 적용
 * 예) mbSwiper.init({intv:3000, edur:1000, eopt:'easeInOutCubic'});
 **/
var mbSwiper = mbSwiper || {};
mbSwiper = (function() {
    'use strict';
    var self	=   undefined,
        dom	 =   undefined,
        sIdx	=   undefined,
        setting =   new Object(),
        targets =   new Array();	// 스와이핑 오브젝트 리스트
    return {
        dom: {
            root:	   'body',
            default:	'swobj'
        },
        init: function(opts) {
            self	= this;
            dom	 = self.dom;

            var priority = document.getElementsByClassName(dom.default); // 스와이핑 영역 공통 클래스

            if (typeof opts !== 'undefined') for (var k in opts) setting[k] = opts[k];
            if (priority.length > 0) self.setUI();
        },
        setUI: function() {
            var swpObj  = document.getElementsByClassName(dom.default), //$('.'+this.dom.default),
                initNm  = 0,
                initln  = swpObj.length;

            if (initln !== setting.subopts.length) {
                console.error('DOM 요소 갯수와 SETTING OPTION 갯수가 다릅니다.');
                return false;
            };

            // 화면상 스와이핑 오브젝트들 Array에 저장
            for (;initNm < initln; initNm++) {
                targets.push({ me:swpObj[initNm] });
            };

            // 화면 내 swpObj 갯수만큼 Object 생성
            targets.forEach(function(val, key) {
                var drctn	   = setting.subopts[key].direction, // 슬라이딩 방향 옵션
                    liOpt	   = undefined,
                    ulOpt	   = undefined,
                    crNde	   = document.createElement('div'),
                    //aNde		= document.createElement('a'),
                    sInt		= 0;

                val.props	   = new Object();
                val.props.int   = 0;
                val.props.wth   = (drctn === 'h') ? val.me.clientWidth : val.me.clientHeight;
                val.props.uls   = val.me.getElementsByTagName('ul');
                val.props.lis   = val.me.getElementsByTagName('li');
                val.props.len   = val.props.lis.length,
                val.props.anm   = false;

                //$(crNde).addClass('circle-wrap');
                crNde.className = 'circle-wrap';
                val.me.appendChild(crNde);

                // 인덱스용 클래스 삽입
                for (; sInt < val.props.lis.length; sInt++) {
                    var aNde = document.createElement('a');

                    aNde.className = 'circle-btn';
                    crNde.appendChild(aNde);
                    val.props.lis[sInt].className = '_' + sInt;
                };

                // 슬라이딩 방향별 설정
                switch (drctn) {
                    case 'h':
                        liOpt = { width:val.props.wth + 'px', height:'100%' };
                        ulOpt = { left:-val.props.wth + 'px', width:val.props.wth * val.props.len + 'px', height:'100%' };
                    break;
                    case 'v':
                        liOpt = { width:val.me.clientWidth + 'px', height:val.props.wth + 'px' };
                        ulOpt = { top:-val.props.wth + 'px', width:val.me.clientWidth + 'px', height:val.props.wth * val.props.len + 'px' };
                    break;
                };

                val.me.getElementsByClassName('circle-wrap')[0].getElementsByClassName('circle-btn')[0].className = 'circle-btn on';
                dS.css.set({ target:val.props.lis, property:liOpt });
                dS.css.set({ target:val.props.uls, property:ulOpt });
            });

            self.addEvents();
        },
        addEvents: function() {
            targets.forEach(function(val, key) {
                val.time		= setting.subopts[key].term;
                val.timeout	 = self.timer.toggle;
                val.props.stat  = false; // 타이머 작동 여부

                val.timeout({ key:key, tglr:'play' });
                val.me.getElementsByClassName('toggle-btn')[0].className = 'toggle-btn active';

                // 플레이, 스탑 버튼 토글
                dS.events.add({
                    target  : val.me.getElementsByClassName('toggle-btn')[0],
                    events  : 'click touchstart',
                    function: self.toggle,
                    params  : key
                });

                // 클릭, 터치 시작
                dS.events.add({
                    target  : val.me.getElementsByTagName('div')[0],
                    events  : 'mousedown touchstart',
                    function: self.mouse.start,
                    params  : key
                });

                // 드래그
                dS.events.add({
                    target  : val.me,
                    events  : 'mousemove touchmove',
                    function: self.mouse.move,
                    params  : key
                });

                dS.events.add({
                    target  : val.me,
                    events  : 'transitionend oTransitionEnd webkitTransitionEnd',
                    function: self.slide.end,
                    params  : { key:key }
                });

            });

            // 드래그 끝
            dS.events.add({
                target  : document,
                events  : 'mouseup touchend',
                function: self.mouse.end,
                params  : null
            });

            // 윈도우 리사이즈
            dS.events.add({
                target  : window,
                events  : 'resize',
                function: dS.browser.resizeEnd,
                params  : { time:300, callback:self.callback.preRqs }
            });
        },
        callback: {
            // 화면 리사이징 시 슬라이딩 애니메이션 확인 후 정지
            preRqs: function() {
                var inm	 = 0,
                    len	 = targets.length;

                for (; inm < len; inm++) {
                    if (targets[inm].props.anm) $(targets[inm].props.uls).stop();
                };
                self.callback.resize();
            },
            // 화면 리사이징에 따른 요소 리사이징
            resize: function() {
                var inm	 = 0,
                    len	 = targets.length;

                for (; inm < len; inm++) {
                    var drctn = setting.subopts[inm].direction, // 슬라이딩 방향 옵션
                        wtOpt = undefined,
                        liOpt = undefined,
                        ulOpt = undefined;

                    // 슬라이딩 방향별 설정
                    switch (drctn) {
                        case 'h':
                            wtOpt = Number(dS.css.get({ target:targets[inm].me, property:'width' }).width.split('px')[0]);
                            liOpt = { width:wtOpt + 'px' };
                            ulOpt = { left:-wtOpt + 'px', width:wtOpt * targets[inm].props.len + 'px' };
                        break;
                        case 'v':
                            wtOpt = Number(dS.css.get({ target:targets[inm].me, property:'height' }).height.split('px')[0]);
                            liOpt = { height:wtOpt + 'px' };
                            ulOpt = { top:-wtOpt + 'px', height:wtOpt * targets[inm].props.len + 'px' };
                        break;
                    };

                    targets[inm].props.wth = wtOpt;

                    dS.css.set({ target:targets[inm].props.lis, property:liOpt });
                    dS.css.set({ target:targets[inm].props.uls, property:ulOpt });
                };
            }
        },
        toggle: function() {
            var ovid	= arguments[0],
                e	   = arguments[1],
                crtg	= e.currentTarget,
                tgts	= targets[ovid];

            e.preventDefault();

            switch (tgts.props.stat) {
                case true:
                    tgts.props.stat = true;
                    self.timer.toggle({ key:ovid, tglr:'pause' });
                    crtg.classList.remove('active');
                    crtg.style.background = 'white';
                break;
                case false:
                    tgts.props.stat = false;
                    self.timer.toggle({ key:ovid, tglr:'play' });
                    crtg.classList.add('active');
                    crtg.style.background = 'black';
                break;
            };

        },
        mouse: {
            start: function() {
                sIdx = arguments[0];

                var drctn   = setting.subopts[sIdx].direction,
                    e	   = arguments[1],
                    tgts	= targets[sIdx],
                    ul	  = tgts.props.uls[0],
                    as	  = tgts.me.querySelector('a'),
                    cond	= (as.classList.value.indexOf('active') !== -1) ? true : false;

                e.preventDefault();
                e.stopImmediatePropagation();

                tgts.props.mousestat = true;
                tgts.props.anm = false;
                //ul.stop();

                switch (e.type) {
                    case 'mousedown':
                        (drctn === 'h')
                        ? tgts.props.initPnt = e.pageX + tgts.props.wth
                        : tgts.props.initPnt = e.pageY + tgts.props.wth;
                    break;
                    case 'touchstart':
                        (drctn === 'h')
                        ? tgts.props.initPnt = e.originalEvent.touches[0].clientX + tgts.props.wth
                        : tgts.props.initPnt = e.originalEvent.touches[0].clientY + tgts.props.wth;
                    break;
                };

                if (cond) self.timer.toggle({ key:sIdx, tglr:'pause' });
            },
            move: function() {
                if (sIdx === undefined) return false;

                var drctn   = setting.subopts[sIdx].direction,
                    e	   = arguments[1],
                    tgts	= targets[sIdx],
                    lInit   = tgts.props.initPnt,
                    lWdth   = tgts.props.wth,
                    mOpt	= undefined;

                tgts.props.dist = 0;

                if (tgts.props.mousestat && !tgts.props.anm) {
                    (e.type === 'mousemove')
                    ? (drctn === 'h') // 마우스 환경
                        ? tgts.props.dist = e.pageX - lInit
                        : tgts.props.dist = e.pageY - lInit
                    : (drctn === 'h') // 터치 환경
                        ? tgts.props.dist = e.originalEvent.touches[0].clientX - lInit
                        : tgts.props.dist = e.originalEvent.touches[0].clientY - lInit

                    mOpt = (drctn === 'h') ? { left:tgts.props.dist + 'px', 'transition': 'none' } : { top:tgts.props.dist + 'px', 'transition': 'none' };
                    if (Math.abs(tgts.props.dist + lWdth) <= lWdth) dS.css.set({ target:tgts.props.uls, property:mOpt });
                };

            },
            end: function(e) {
                if (sIdx === undefined) return false;

                var drctn   = setting.subopts[sIdx].direction,
                    tgts	= targets[sIdx],
                    dWth	= tgts.props.wth,
                    dDst	= (tgts.props.dist !== undefined) ? tgts.props.dist : 0, // 클릭만 했을경우 전달 값이 없음
                    lDist   = (dDst !== 0) ? dDst + dWth : 0, // 클릭만 했을경우 전달 값이 없음
                    tempo   = new Object();
                if (e.target.classList.value.indexOf('toggle-btn') !== -1) return false; // 플레이, 스톱 버튼 클릭시 이벤트 버블 중지

                e.preventDefault();
                e.stopImmediatePropagation();

                tgts.props.mousestat = false;

                setting.subopts[sIdx].dir  = (lDist < 0) ? 'left' : 'right';
                setting.subopts[sIdx].comp = (Math.abs(lDist) <= dWth / 2) ? 'back' : 'go';

                tempo.key   = sIdx;
                tempo.dir   = setting.subopts[sIdx].dir;
                tempo.comp  = setting.subopts[sIdx].comp;

                self.slide.init(tempo);
            }
        },
        slide: {
            init: function(opts) {
                var drctn   =   setting.subopts[opts.key].direction,
                    tgts	=   targets[opts.key],
                    dir	 =   opts.dir,
                    roll	=   opts.comp,
                    dWth	=   tgts.props.wth,
                    dist	=   (dir === 'left')
                                ? (roll === 'go') ? - dWth * 2 : -dWth
                                : (roll === 'go') ? 0 : -dWth,
                    ul	  =   tgts.props.uls[0],
                    ulDist  =   (drctn === 'h')
                                ? (dir === 'left') // 가로 버전
                                    ? dist - Number(ul.style['left'].split('px')[0])
                                    : dist + Number(ul.style['right'].split('px')[0])
                                : (dir === 'left') // 세로 버전
                                    ? dist - Number(ul.style['top'].split('px')[0])
                                    : dist + Number(ul.style['bottom'].split('px')[0]),
                    spd	 =   Math.abs(ulDist - dWth + dWth) * 3, //(roll === 'go') ? Math.abs(ulDist - dWth + dWth) * 2 : 200,
                    cond	=   (tgts.me.querySelector('a').classList.value.indexOf('active') !== -1) ? true : false,
                    mOpt	=   undefined,
                    lCrlc   =   tgts.me.querySelectorAll('.circle-wrap .circle-btn'),
                    copyF   =   tgts.props.lis[0], // 첫번째 박스
                    copyL   =   tgts.props.lis[tgts.props.len - 1]; // 마지막 박스

                (drctn === 'h')
                ? mOpt = { left: dist + 'px', 'transition':'left .3s ease-out 0s' }
                : mOpt = { top: dist + 'px', 'transition':'top .3s ease-out 0s' };

                tgts.props.anm = true;

                dS.css.set({ target:ul, property:mOpt });
            },
            end: function(opts) {
                var drctn   =   setting.subopts[opts.key].direction,
                    tgts	=   targets[opts.key],
                    roll	=   setting.subopts[opts.key].comp,
                    dir	 =   setting.subopts[opts.key].dir,
                    dWth	=   tgts.props.wth,
                    ul	  =   tgts.props.uls[0],
                    lCrlc   =   tgts.me.querySelectorAll('.circle-wrap .circle-btn'),
                    copyF   =   tgts.props.lis[0], // 첫번째 박스
                    copyL   =   tgts.props.lis[tgts.props.len - 1];

                ul.style.transition = 'none';
                if (roll === 'go') {
                    switch (dir) {
                        case 'left':
                            (tgts.props.int >= tgts.props.len - 1) ? tgts.props.int = 0 : tgts.props.int++;
                            ul.append(copyF);
                            (drctn === 'h') ? ul.style.left = -dWth + 'px' : ul.style.top = -dWth + 'px';
                        break;
                        case 'right':
                            (tgts.props.int <= 0) ? tgts.props.int = tgts.props.len - 1 : tgts.props.int--;
                            ul.prepend(copyL);
                            (drctn === 'h') ? ul.style.left = -dWth + 'px' : ul.style.top = -dWth + 'px';
                        break;
                    };
                    for (var ci = 0; ci < lCrlc.length; ci++) lCrlc[ci].classList.remove('on');
                    lCrlc[tgts.props.int].classList.add('on');
                    self.slide.resume(opts);
                } else {
                    self.slide.resume(opts);
                };
            },
            resume: function(opts) {
                var tgts	=   targets[opts.key],
                    cond	=   (tgts.me.querySelector('a').classList.value.indexOf('active') !== -1) ? true : false,
                    dWth	=   tgts.props.wth;

                tgts.props.anm = false;
                if (cond) self.timer.toggle({ key:opts.key, tglr:'play' });
                if (dWth !== tgts.props.wth) self.callback.resize(); // 슬라이딩 시작 전과 넓이값이 달라졌을 경우 재조정
            }
        },
        timer: {
            toggle: function(opts) {
                var tgts = targets[opts.key],
                    tglr = opts.tglr;

                clearTimeout(tgts.timeout);
                tgts.timeout = null;

                switch (tglr) {
                    case 'play':
                        setting.subopts[opts.key].dir  = 'left';
                        setting.subopts[opts.key].comp = 'go';

                        tgts.timeout = setTimeout(self.slide.init.bind(this, { key:opts.key, dir:'left', comp:'go' }), tgts.time);
                        tgts.props.stat = true;
                    break;
                    case 'pause':
                        tgts.props.stat = false;
                    break;
                }
            }
        }
    }
}());

/**
 * 툴팁
 * 예) mbCmnTooltip.init({ target:'tooltip-over' });
 **/
 var mbCmnTooltip = mbCmnTooltip || {};
mbCmnTooltip = (function() {
    'use strict';
    var setting	 = new Object(),
        targets	 = new Array(),
        focusable   = undefined,
        self		= undefined,
        dom		 = undefined;
    return {
        dom: {
            body	: undefined,
            tooltip : undefined
        },
        init: function(opts) {
            self	= this;
            dom	 = self.dom;
            if (typeof opts !== 'undefined') for (var k in opts) setting[k] = opts[k];
            if (document.getElementsByClassName(setting.target).length > 0) self.setUI();
        },
        setUI: function() {
            var i = 0,
                o = document.getElementsByClassName(setting.target),
                l = o.length;

            dom.body						= document.getElementsByTagName('body');
            dom.tooltip					 = document.createElement('div'); // 툴팁 박스
            dom.tooltip.className		   = 'tooltip-layer';
            dom.tooltipInner				= document.createElement('div'); // 툴팁 타이틀, 내용 껍질
            dom.tooltipInner.className	  = 'wrap';
            dom.tooltipPin				  = document.createElement('div'); // 툴팁 화살표
            dom.tooltipPin.className		= 'tipPin';
            dom.tooltipTit				  = document.createElement('div'); // 툴팁 타이틀 영역
            dom.tooltipTit.className		= 'tit-area';
            dom.tooltipTit.style.display	= 'none';
            dom.tooltipCon				  = document.createElement('div'); // 툴팁 내용 영역
            dom.tooltipCon.className		= 'cont-area';
            dom.tooltipCls				  = document.createElement('button'); // 툴팁 닫기 버튼
            dom.tooltipCls.style.display	= 'none';
            dom.tooltipCls.className		= 'btn-close-tooltip';
            dom.tooltipCls.innerHTML		= '툴팁 닫기';

            dom.body[0].appendChild(dom.tooltip);
            dom.tooltip.appendChild(dom.tooltipInner);
            dom.body[0].appendChild(dom.tooltipPin);
            dom.tooltipInner.appendChild(dom.tooltipTit);
            dom.tooltipInner.appendChild(dom.tooltipCon);
            dom.tooltip.appendChild(dom.tooltipCls);

            dom.ts			 = document.createElement('span'); // 텍스트 너비 계산용
            dom.ts.className = 'tempspan4wth';
            dom.body[0].appendChild(dom.ts);

            dS.css.set({ target:dom.tooltipInner, property:{ 'min-width':'200px' } });
            dS.css.set({ target:dom.tooltip, property:{ display:'block', 'min-width':'200px', zIndex:'501', opacity:0 } });
            dS.css.set({ target:dom.tooltipPin, property:{ position:'absolute', top:'0px', left:'0px', width:'22px', height:'12px', opacity:0, zIndex:'501'} });// background image 있음. common.css
            dS.css.set({ target:dom.ts, property:{ position:'absolute', display:'block', 'font-size':'15px', opacity:0 } });

            for (; i < l; i++) targets.push({me:o[i]});

            self.addEvents();
        },
        addEvents: function() {
            // 열기 이벤트
            targets.forEach(function(val, key) {
                var a = val.me.getAttribute('class').split(' '),
                    b = a.length,
                    c = a[b - 1],
                    e = undefined;

                switch (c) {
                    case 'click':
                        e = 'click';
                    break;
                    case 'hover':
                        e = 'mouseenter mouseleave focusin focusout focus';
                    break;
                    case 'pop':
                        e = 'click';
                    break;
                };

                dS.events.add({ target:val.me, events:e, function:self.events.toggle, params:key });
            });
            // 닫기 이벤트
            //dS.events.add({ target:dom.tooltipCls, events:'click', function:self.events.destroy, params:null }); //
            dS.events.add({ target:dom.tooltip, events:'click', function:self.events.destroy, params:undefined });
            dS.events.add({ target:window, events:'resize scroll', function:self.events.destroy, params:undefined });
        },
        events: {
            destroy: function(e) {
                var e	   = arguments[0],
                    eType   = e.type,
                    eTgt	= e.target || e.srcElement,
                    eTxt	= eTgt.innerText,
                    eCnm	= eTgt.className;

                if (eType === 'scroll' || eType === 'resize' || eCnm === 'btn-close-tooltip') {
                    dS.css.set({ target:dom.tooltip, property: { opacity:0, 'pointer-events':'none' } });
                    dS.css.set({ target:dom.tooltipPin, property: { opacity:0 } });
                    if (focusable !== undefined) focusable.focus();
                    focusable = undefined;
                };
            },
            toggle: function() {
                var a   = arguments,
                    e   = a[1], // 이벤트
                    i   = a[0], // ID
                    t   = e.currentTarget, // 롤오버된 요소
                    j   = e.type,
                    h   = dom.tooltip.offsetHeight, // 툴팁박스의 높이
                    w   = dom.tooltip.offsetWidth, // 툴팁박스의 너이
                    x   = Math.floor(t.getBoundingClientRect().left), // t의 offsetLeft 값
                    y   = Math.floor(t.getBoundingClientRect().top), // t의 offsetTop 값
                    b   = 12, // 말풍선 꼭지의 높이
                    c   = dS.browser.getH(), // 브라우져 높이
                    d   = dS.browser.getW(), // 브라우져 너비
                    f   = dS.browser.getST(), // scrolltop
                    g   = dS.browser.getSL(), // scrollleft
                    l   = t.offsetWidth, // 버튼 너비
                    m   = t.offsetHeight, // 버튼 높이
                    v   = undefined, // 툴팁 left 값
                    z   = undefined, // 툴팁 top 값
                    o   = (j === 'click') // click 이벤트의 경우 cont-area 내용 삽입
                        ? t.getElementsByClassName('cont-area')[0].innerHTML
                        : t.getElementsByClassName('ir')[0].innerHTML,
                    p   = undefined, // 타이틀 내용
                    ct  = t.getAttribute('class').search('pop'), // 타이틀이 필요한 툴팁인지 여부 확인
                    tt  = 40, // 타이틀 영역 높이
                    cs  = undefined, // j 타입 변환
                    bs  = ['<br>','<br >','<br/>','<br />'],
                    br  = undefined,
                    ot  = undefined;

                e.preventDefault();

                // ir 에 지정된 너비값이 있을경우
                if (t.getElementsByClassName('ir')[0].getAttribute('data-width') !== undefined) {
                    w = Number(t.getElementsByClassName('ir')[0].getAttribute('data-width'));
                };

                // 삽입될 텍스트 너비 계산
                bs.forEach(function(v, k) {
                    if (o.search(v) !== -1) {
                        br = v;
                    };
                });

                ot = o.split(br)[0];
                dom.ts.innerHTML = '';
                // 가장 긴 줄로 계산
                dom.tooltipCon.innerHTML ='';
                o.split(br).forEach(function(v, k) {
                    dom.ts.insertAdjacentHTML('beforeEnd', v + '<br>');
                });

                //dom.tooltip.className = 'tooltip-layer'
                dS.css.set({ target:dom.tooltipTit, property:{ display:'none' } });
                dS.css.set({ target:dom.tooltipCls, property:{ display:'none' } });

                if (j === 'focus' || j === 'focusin' || j === 'mouseenter' || j === 'click') cs = 'open';
                if (j === 'focusout' || j === 'mouseleave') cs = 'close';

                switch (cs) {
                    case 'open':
                        dom.tooltipCon.innerHTML = '';
                        dom.tooltipCon.insertAdjacentHTML('beforeend', o.trim());
                        dS.css.set({ target:dom.tooltip, property:{ width:w + 'px' } }); // css 기본속성 override
                        dS.css.set({ target:dom.tooltipInner, property:{ width:w + 'px' } });

                        h = dom.tooltip.clientHeight;
                        w = dom.tooltip.clientWidth;
                        // 좌측 영역이 부족
                        if (x <= w / 2) {
                            console.log('우측에 표시');
                            var pt = undefined;
                            v   = x + g + l + b + 2; // 좌우
                            z   = y + f - h / 2 + m / 2; // 상하
                            pt  = z + (h / 2) - 4;
                            // 좌측 + 상단 영역이 부족
                            if (y <= h) {
                                z   = f + y - 6;
                                pt  = f + y + 6;
                            };
                            // 좌측 + 하단 영역이 부족
                            if (c <= y + h) {
                                z = f + y - h + 35;
                                pt  = y + f + 6;
                            };
                            dS.css.set({ target:dom.tooltipPin,
                                property:{ top: Math.floor(pt) + 'px', left: Math.floor(v - 15) + 'px',
                                '-ms-transform': 'rotate(270deg)', transform: 'rotate(270deg)', opacity:1 } });
                        // 우측 영역이 부족
                        } else if (x + l / 2 + w / 2 >= d ) {
                            console.log('좌측에 표시');
                            var pt = undefined;
                            v   = x + g - w - b - 2; // 좌우
                            z   = y + f - h / 2 + m / 2; // 상하
                            pt  = z + (h / 2) - 4;
                            // 우측 + 상단 영역이 부족
                            if (y <= h) {
                                z   = f + y - 6;
                                pt  = f + y + 6;
                            };
                            // 우측 + 하단 영역이 부족
                            if (c <= y + h) {
                                z = f + y - h + 30 - ((ct !== -1) ? tt : 0);
                                pt  = y + f;
                            };
                            dS.css.set({ target:dom.tooltipPin,
                                property:{ top: pt + 'px', left: v + w - 5 + 'px',
                                '-ms-transform': 'rotate(90deg)', transform: 'rotate(90deg)', opacity:1 } });
                        // 상단 영역이 부족
                        } else if (y - tt <= h + b) {
                            console.log('하단에 표시');
                            v = x - w / 2  + g + l / 2; // 좌우
                            z = y + m + f + b + (m / 4) ; // 상하: 버튼의 y 값 + 버튼의 높이 + 상하스크롤 + 화살표 높이
                            dS.css.set({ target:dom.tooltipPin,
                                property:{ top: Math.round(z - 10) + 'px', left: v + (w / 2) - 11 + 'px',
                                '-ms-transform': 'rotate(0deg)', transform: 'rotate(0deg)', opacity:1 } });
                        // 하단 영역이 부족
                        } else {
                            console.log('상단에 표시');
                            v = x - w / 2 + g + l / 2; // 좌우: 버튼 x값 - 툴팁너비 / 2 + 좌우스크롤 + 버튼 너비 / 2
                            z = y - h - b + f - (m / 4) - ((ct !== -1) ? tt : 0); // 상하: 버튼 y값 - 툴팁높이 - 툴팁화살표 높이 + 상하스크롤 - 타이틀이 있을 경우 타이틀 높이
                            dS.css.set({ target:dom.tooltipPin,
                                property:{ top: Math.round(z + h) + 'px', left: Math.round(v + (w / 2) - 11) + 'px',
                                '-ms-transform': 'rotate(180deg)', transform: 'rotate(180deg)', opacity:1 } });
                        };

                        dS.css.set({ target:dom.tooltip, property: { top: Math.round(z) + 'px', left: v + 'px', opacity:1, 'pointer-events':'auto' } });
                        // 닫기 버튼 활성화
                        if (j === 'click') {
                            dom.tooltipCls.style.display = 'block';
                            dom.tooltipCls.focus();
                            focusable = t;
                        };

                        // 타이틀 활성화
                        if (ct !== -1) {
                            var ac = dom.tooltip.className;

                            $(dom.tooltip).addClass('pop');
                            p = t.getElementsByClassName('tit-area')[0].innerHTML;

                            dom.tooltipTit.innerHTML = '';
                            dom.tooltipTit.insertAdjacentHTML('beforeend', p);
                            dS.css.set({ target:dom.tooltipPin, property:{ opacity:0 } });
                            dS.css.set({ target:dom.tooltipTit, property:{ display:'block' } });
                        } else {
                            dom.tooltip.className = 'tooltip-layer';
                        };
                    break;

                    case 'close':
                        dS.css.set({ target:dom.tooltip, property: { opacity:0, 'pointer-events':'none' } });
                        dS.css.set({ target:dom.tooltipPin, property:{ opacity:0, 'pointer-events':'none' } });
                    break;
                };

            }
        }
    };
}());

/**
 * 영화관 게시물 토글
 * accordion-list 클래스에 자동 적용
 * 예) mbThToggle.init({ target:'accordion-list' });
 **/
var mbThToggle = mbThToggle || {};
mbThToggle = (function() {
    'use strict';
    var setting = new Object(),
        targets = new Array(),
        self	= undefined,
        dom	 = undefined;
    return {
        dom: {
            body	:   'body',
            default :   'li',
            title   :   'div.title',
            cont	:   'div.content'
        },
        init: function(opts) {
            self	= this;
            dom	 = self.dom;
            if (typeof opts !== 'undefined') for (var k in opts) setting[k] = opts[k];
            if (document.getElementsByClassName(setting.target).length > 0) self.setUI();
        },
        setUI: function() {
            var wrap	= document.getElementsByClassName(setting.target), //$('.'+this.dom.default),
                tglTit  = wrap[0].getElementsByTagName(dom.default),
                initNm  = 0,
                initln  = tglTit.length;

            for (; initNm < initln; initNm++) {
                targets.push({me:tglTit[initNm]});
                if (initNm > 0) $(tglTit[initNm]).find(dom.cont).hide();
            };

            self.addEvents();
        },
        addEvents: function() {
            var initNm = 0;

            for (; initNm < targets.length; initNm++) {
                targets[initNm].id = initNm;
                dS.events.add({ target:targets[initNm].me, events:'click', function:self.events.toggle, params:initNm });
            };
        },
        events: {
            toggle: function() {
                var a = arguments,
                    e = a[1],
                    i = a[0],
                    s = 0;

                e.preventDefault();

                if($(targets[i].me).find(dom.title).hasClass('on')){
                	$(targets[i].me).find(dom.title).removeClass('on');
                    $(targets[i].me).find(dom.cont).hide();

                    for (; s < targets.length; s++) {
                        $(targets[s].me).find(dom.title).removeClass('on');
                        $(targets[s].me).find(dom.cont).hide();
                    };
                }
                else {
                	for (; s < targets.length; s++) {
                        $(targets[s].me).find(dom.title).removeClass('on');
                        $(targets[s].me).find(dom.cont).hide();
                    };

                	$(targets[i].me).find(dom.title).addClass('on');
                    $(targets[i].me).find(dom.cont).show();
                }


            }
        }
    }
}());

/**
 * 영화관 상영시간표 달력
 * date-area 클래스에 자동 적용
 * 예 1) mbThCalendar.events.trimdate({ mnDate:'', direction:'' });
 * 예 2) mbThCalendar.events.trimdate({ mnDate:'2018.12.16', callback:test });
 * 예 3) mbThCalendar.events.trimdate({ mnDate:'2018.12.16', direction:'pre' });
 * 예 4) mbThCalendar.events.trimdate({ mnDate:'2018.12.16', direction:'next' });
 * 예 5) mbThCalendar.events.selhour({ hour:5 }); 예매 가능한 시간으로 초기화
 **/
var mbThCalendar = mbThCalendar || {};
mbThCalendar = (function() {
    'use strict';
    var setting = new Object(),
        targets = new Array(),
        self	= undefined,
        dom	 = undefined;
    return {
        dom: {
            body	: 'body',
            root	: undefined,
            dateG   : undefined,
            dateM   : undefined,
            btns	: undefined
        },
        arrCkFlag : false
        , init: function(opts) {
            self	= this;
            dom	 = self.dom;

            if (typeof opts !== 'undefined') for (var k in opts) setting[k] = opts[k];
            if (document.getElementsByClassName(setting.target).length > 0)
            {
                self.events.beforeSet('init');
            };
        },
        setUI: function() {
            setting.today	   = mbThCalendar.globalSvrDate.slice(0,4) + '.' + mbThCalendar.globalSvrDate.slice(4,6) + '.' + mbThCalendar.globalSvrDate.slice(6,8);
            setting.days		= dS.util.date.days;
            setting.daysEn	  = dS.util.date.daysEn;
            setting.timeout	 = null;
            setting.dlen		= 15;
            setting.dwidth	  = 70;
            setting.dgap		= 30;

            setting.hourW	   = 35;
            setting.maxW		= setting.hourW * 19;
            setting.mscrIntv	= undefined;
            setting.tHourCk	 = undefined;
            setting.lPara	   = window.parent.location.search.split('?')[1];
            setting.lan		 = (setting.lPara !== 'megaboxLanguage=en') ? true : false; // true > 한국어 false > English

            dom.root			= document.getElementsByClassName('time-schedule')[0];
            dom.krenTgl		 = document.querySelector('.quick-reserve .btn-ticket button');
            dom.dateG		   = document.getElementsByClassName('date-area')[0];
            dom.dateM		   = document.createElement('div');
            dom.pnbtns		  = dom.root.querySelectorAll('.btn-pre, .btn-next');
            dom.year0		   = dom.root.querySelectorAll('.year')[0];
            dom.year1		   = dom.root.querySelectorAll('.year')[1];
            dom.hour			= document.querySelector('.hour-schedule');

            // 빠른예매 시간 선택용
            if (dom.hour !== null) {
                var tempA = undefined;
                dom.rect				= dom.hour.querySelector('.view');
                dom.hPnBtns			 = dom.hour.querySelectorAll('.btn-prev-time, .btn-next-time');
                dom.hCell			   = dom.hour.querySelectorAll('.wrap .view button');

                dom.rect.style.position = 'absolute';
                dom.rect.style.width	= dom.hCell.length * setting.hourW + 'px';

                tempA = Array.prototype.slice.call(dom.hCell);
                tempA.forEach(function(ie, ik) {
                    dom.hCell[ik].style.opacity = .5;
                    dom.hCell[ik].setAttribute('disabled', true);
                });
            };

            dom.schdl		   = undefined;

            self.events.detectHours();

            dS.css.set({ target:dom.year0, property: { zIndex:'1' } });
            dS.css.set({ target:dom.year1, property: { zIndex:'1' } });

            dom.dateM.className = 'wrap';
            dom.dateG.innerHTML = '';
            dom.dateG.appendChild(dom.dateM);
            //dS.css.set({ target: dom.dateM, property: { position:'relative', width: (setting.dlen * 2) * setting.dwidth + 'px', border:'none' } });
            dom.dateM.style.cssText = 'position:relative;width:'+ (setting.dlen * 2) * setting.dwidth + 'px;border:none';
            dom.daybtns			 = dom.root.querySelectorAll('.date-area .wrap');
            dom.mbtbtns			 = document.querySelectorAll('#movieList, #crtnMovieList, #brchList, #specialBrchTab');

            self.addEvents();
        },
        addEvents: function() {
            self.events.trimdate({mnDate:'',direction:''});
            dS.events.add({ target: dom.pnbtns, events: 'click', function: self.events.init });
            dS.events.add({ target: dom.daybtns, events: 'click', function: self.events.day });
            dS.events.add({ target: dom.mbtbtns, events: 'click', function: self.events.mtlist });
            //all-list

            // 한/영 토글
            if (dom.krenTgl !== null)
            {
                self.events.tglLang();
                //dS.events.add({ target: dom.krenTgl, events: 'click', function: self.events.tglLang });
            };

            // 빠른예매 시간 선택용
            if (dom.hour !== null) {
                dS.events.add({ target: dom.hPnBtns, events: 'click', function: self.events.movehour });
                dS.events.add({ target: dom.hCell, events: 'click', function: self.events.selhour });
            };
        }
        , tempMthd      : function() {}
        , globalSvrDate : undefined
        , lastSavedDate : undefined
        , events: {
            init: function(e) {
                var e = e || window.event
                    , t = e.currentTarget
                    , d = t.className.split('-')[1];

                e.preventDefault();

                self.events.move.day(d);
                self.events.move.year(d);
            }
            , beforeSet: function(opts)
            {
                // 필수 Array 확인 후 시작 , allPlayDates, holidaysFromServer
                if (setting.ckArr !== null)
                {
                    window.clearInterval(setting.ckArr);
                    setting.ckArr = null;
                };

                setting.ckArr = window.setInterval(function() {
                    if (mbThCalendar.arrCkFlag)
                    {
                        window.clearInterval(setting.ckArr);
                        setting.ckArr = null;
                        if (opts === 'init')
                        {
                            setting.count = 0;
                            self.setUI();
                        }
                        else
                        {
                            //self.events.trimdate({mnDate:'',direction:''});
                        };
                    }
                }, 100);
            }
            , detectHours: function()
            {
                // 영화 스케쥴 선택용
                setting.mscrIntv	= null;
                setting.initHour = undefined;
                //clearInterval(setting.mscrIntv); // setInterval 이 clear 가 제대로 안되는 버그가 있어서 setTimeout 으로 변경

                setting.mscrIntv = setTimeout(function() {// setInterval 이 clear 가 제대로 안되는 버그가 있어서 setTimeout 으로 변경
                    if (document.querySelector('.result .mCustomScrollbar > div > div') !== null) {
                        //clearInterval(setting.mscrIntv); // setInterval 이 clear 가 제대로 안되는 버그가 있어서 setTimeout 으로 변경
                        setting.mscrIntv = null;

                        dom.cusSc = document.querySelector('.result .mCustomScrollbar');
                        dom.scRec = document.querySelector('.result .mCustomScrollbar > div');
                        dom.schdl = document.querySelectorAll('.result .mCustomScrollbar > div div')[0];
                        dom.drgbr = document.querySelectorAll('.result .mCustomScrollbar > div div')[1];
                        dom.indvS = dom.schdl.querySelectorAll('ul li');

                        if (dom.indvS === undefined || dom.indvS.length < 1) return false;

                        setTimeout(function() {
                            var i		   = 0
                                , l		 = dom.indvS.length
                                , y		 = Number(dom.schdl.style.top.split('px')[0])
                                , n		 = undefined
                                , tHours	= [];

                            $(dom.hCell).attr('disabled', true);
                            $(dom.hCell).css({opacity:.5});

                            for (;i < l; i++) {
                                n = Number(dom.indvS[i].querySelector('.time strong').innerText.split(':')[0]);
                                if (tHours.indexOf(n) === -1) tHours.push(n);
                            };

                            tHours.forEach(function(v, key) {
                                setting.initHour = tHours[0];
                                dom.hCell[v].style.opacity = 1;
                                dom.hCell[v].removeAttribute('disabled', false);
                            });
                            self.events.selhour({ hour:setting.initHour });
                            self.events.trimhour({ hour:setting.initHour });
                        }, 100);
                    };
                }, 100);
            }
            , wheel: function(e) {
                if (dom.indvS === undefined || dom.indvS.length <= 1) return false;
                var i	   = 0
                    , l	 = dom.indvS.length
                    , y	 = Number(dom.schdl.style.top.split('px')[0])
                    , tHour = undefined
                    , lHour = undefined;

                /* 스크롤에따라 시간 이동 불가 요청
                 for (;i < l; i++) {
                    if (-dom.indvS[i].offsetTop >= y) {
                        tHour = Number(dom.indvS[i].querySelector('.time strong').innerText.split(':')[0]);
                    };
                };

                lHour = (setting.tHourCk !== undefined) ? setting.tHourCk : tHour;

                self.events.trimhour({ hour:lHour });
                 */
            }
            , trimhour: function(opts) {
                var idx = (opts === undefined) ? 0 : opts.hour
                    , of = (opts.overflow !== undefined) ? opts.overflow : false;

                dom.rect.style.transition   = 'none';

                if (idx < 5) {
                    dom.rect.style.left = '0px';
                } else if (idx > 20)  {
                    dom.rect.style.left = - setting.maxW + 'px'
                } else {
                    dom.rect.style.left = - idx * setting.hourW + 140 + 'px';
                };

                $(dom.hCell).removeClass('on');
                $(dom.hCell[idx]).addClass('on');
                dom.hCell[idx].focus();
                setting.tHourCk = undefined;
            }
            , movehour: function(e) {
                var e = e || window.event
                    , t	 = e.currentTarget
                    , c	 = t.className
                    , elPos = Number(dom.rect.style.left.split('px')[0]);

                dom.rect.style.transition = 'all .2s ease-out .0s';

                if (elPos >= 0 && c === 'btn-prev-time') return false;
                if (elPos <= -setting.maxW && c === 'btn-next-time') return false;

                (c === 'btn-prev-time')
                ? dom.rect.style.left = elPos + setting.hourW + 'px'
                : dom.rect.style.left = elPos - setting.hourW + 'px'
            }
            , selhour: function() {

                var e = e || window.event || arguments[0]
                    , t = (e.type !== undefined) ? (e.currentTarget || e.srcElement) : dom.hCell[Number(e.hour)]
                    , n = Number(t.innerText)
                    , tHour = undefined;

                $(dom.hCell).removeClass('on');
                $(t).addClass('on');

                for (var i = 0; i < dom.indvS.length; i++) {
                    tHour = Number(dom.indvS[i].querySelector('.time strong').innerText.split(':')[0]);
                    if (n === tHour) {
                        var y = dom.indvS[i].offsetTop + '';
                        $(dom.cusSc).mCustomScrollbar('scrollTo', y);
                        setting.tHourCk = tHour;
                        break;
                    }
                };
            }
            // 영화 리스트나 지역, 극장 리스트 클릭 이벤트
            , mtlist: function(e) {
                var e = e || window.event
                , t = e.target
                , p = t.parentNode
                , i = undefined;

                if (p.nodeName === 'BUTTON')
                {
                    self.events.beforeSet('trim');
                };

                // 극장 리스트 클릭
                if (p.nodeName === 'LI')
                {
                    var prChk = p.parentNode.parentNode.parentNode.parentNode;
                    if ($(prChk).hasClass('all-list'))
                    {
                        self.events.detectHours();
                    };
                }
            }
            , day: function(e) {
                var e = e || window.event
                    , t = e.target
                    , i = undefined;

                e.preventDefault();

                if (t.nodeName === 'BUTTON') {
                    var s = dom.root.querySelectorAll('.date-area .wrap button'),
                        n = Array.prototype.slice.call(s),
                        i = n.indexOf(t),
                        c = s[i].getAttribute('class'),
                        d = s[i].getAttribute('date-data');

                    //alert('날짜 클릭')

                    // 이동 불가하게 하고 싶을 경우
                    if (c.indexOf('disabled') !== -1) return false;

                    setting.lastDate = d;

                    var dayDraw;

                    if (!$(".date-area").has("button")){
                    	dayDraw = '';
                    }else{
                    	dayDraw = setting.lsDate;
                    }

                    self.events.trimdate({mnDate:dayDraw, direction:'', callback:(typeof mbThCalendar.tempMthd === 'function') ? mbThCalendar.tempMthd.bind(this, undefined, d) : undefined });
                };
            }
            , tglLang: function()
            {
                //(setting.lan) ? setting.lan = false : setting.lan = true;
                if (setting.lan)
                {
                    dS.css.set({ target:dom.dateG.querySelectorAll('span.day-kr'), property: { display:'inline-block' } });
                    dS.css.set({ target:dom.dateG.querySelectorAll('span.day-en'), property: { display:'none' } });
                }
                else
                {
                    dS.css.set({ target:dom.dateG.querySelectorAll('span.day-kr'), property: { display:'none' } });
                    dS.css.set({ target:dom.dateG.querySelectorAll('span.day-en'), property: { display:'inline-block' } });
                };

            }
            , move: {
                day: function(d) {
                    if (setting.onani) return false;

                    TweenLite.to(dom.dateM, .3, { left:(d === 'next') ? -(setting.dwidth * 2) : 0, ease: Power1.easeOutCubic,
                    onComplete:self.events.trimdate.bind(this, { mnDate:'', direction:d }) });
                    // onComplete:self.events.trimdate.bind(this, { mnDate:'', direction:d, callback:(typeof tempMthd === 'function') ? tempMthd : undefined }) });

                    setting.onani = true;
                },
                year: function(d) {
                    // 년 월 표시가 두개 인 경우
                    if (setting.mnt.length > 1) {
                        setting.mnt.forEach(function(val, key) {
                            var byear   = dom.root.querySelectorAll('.year'),
                                tbtn	= dom.dateM.querySelectorAll('[month="'+ val +'"]');
                            switch (d) {
                                case 'next':
                                    if (key === 0) {
                                        TweenLite.to(byear[0], .3, { left:tbtn[0].offsetLeft + setting.dgap, ease: Power1.easeOutCubic });
                                    };
                                    if (key === 1) {
                                        if (byear[1].offsetLeft > 30) {
                                            TweenLite.to(byear[1], .3, { left:tbtn[0].offsetLeft - 110, ease: Power1.easeOutCubic });
                                        };
                                    };
                                break;
                                case 'pre':
                                    if (key === 0) {
                                        TweenLite.to(byear[0], .3, { left:tbtn[0].offsetLeft + setting.dgap, ease: Power1.easeOutCubic });
                                    };
                                    if (key === 1) {
                                        if (byear[1].offsetLeft < 940) {
                                            TweenLite.to(byear[1], .3, { left:tbtn[0].offsetLeft + setting.dgap, ease: Power1.easeOutCubic });
                                        };
                                    };
                                break;
                            };
                        });
                    // 년 월 표시가 한개 인 경우
                    } else {
                        var byear   = dom.root.querySelectorAll('.year'),
                            tbtn	= dom.dateM.querySelectorAll('[month="'+ setting.mnt[0] +'"]');
                        TweenLite.to(byear[0], .3, { left:tbtn[0].offsetLeft + setting.dgap, ease: Power1.easeOutCubic });
                    };
                }
            },
            trimdate: function(opts) {
                setting.count++;
                // 테스트용
                //allPlayDates = ["2019.05.27", "2019.05.28", "2019.05.29", "2019.05.30", "2019.05.31", "2019.06.01", "2019.06.03", "2019.06.11"];
                // holidaysFromServer = ["2019.05.28", "2019.06.03"]

                var t = arguments[0],
                    b = undefined, // 날짜 가감 값
                    d = t.direction, // 날짜 가감 작동 방향
                    s = -1,//-setting.dlen  , // 루프 시작
                    t = setting.dlen, // 루프 끝
                    i = -1, // 루프 전체 길이 계산
                    w = setting.dwidth, // 날짜 박스 너비
                    c = undefined, // 오늘
                    j = new Array(), // 일요일
                    k = new Array(), // 토요일
                    v = undefined // 화면상에 표시된 첫번째 날
                    , forwardArr = undefined // 화면상에 표시된 마지막 날
                    , lastActDate = (typeof allPlayDates  !== 'undefined' && allPlayDates.length > 0) ? allPlayDates[allPlayDates.length - 1] : [] // 서버에서 전달한 마지막 날
                    , krCon = (setting.lan) ? 'display:inline-block' : 'display:none'
                    , enCon = (setting.lan) ? 'display:none' : 'display:inline-block'
                    , lastSelDate = Array.prototype.slice.call(dom.root.querySelectorAll('.date-area .wrap button'), null)

                if (mbThCalendar.globalSvrDate !== undefined && opts.mnDate === '' && opts.direction === '')
                {
                    var cvtSrvDate = mbThCalendar.globalSvrDate.slice(0,4) + '.' + mbThCalendar.globalSvrDate.slice(4,6) + '.' + mbThCalendar.globalSvrDate.slice(6,8);
                    opts.mnDate = cvtSrvDate;
                };

                if (typeof setting.fetchHoliday === 'function')
                {
                    setting.fetchHoliday();
                    setting.fetchedHoli = window[setting.holidays];
                };

                if (typeof setting.fetchDisday === 'function')
                {
                    setting.fetchDisday();
                    setting.fetchedDis = window[setting.disdays];
                };

/*				lastSelDate.forEach(function(el, i) {
                    if ($(el).hasClass('on'))
                    {
                        setting.lsDate =  el.getAttribute('date-data');
                    };
                })*/

                setting.onani   = false;

                // 1. 수동입력(mnDate) > 2. 마지막 저장 된 날짜(lsDate) > 3. 오늘 날짜(today)
                setting.mnDate  =   (opts.mnDate === "")
                                    ? (setting.lsDate === undefined) ? setting.today : setting.lsDate
                                    : opts.mnDate,
//				if (opts.mnDate !== '')
//				{
//					setting.mnDate = setting.lastDate = opts.mnDate;
//				}
//				else
//				{
//					if (setting.lastDate === undefined)
//					{
//						setting.mnDate = setting.today;
//					}
//					else
//					{
//						setting.mnDate = setting.lastDate;
//					};
//				};

                // 초기 랜더링시와 영역 밖의 날짜로 이동시만  달력 다시 그림
                setting.spDate  =   setting.mnDate.split('.'),
                setting.dateTo  =   new Date(setting.spDate[0] + '-' + dS.util.number.addZero(setting.spDate[1]) +
                        '-' + dS.util.number.addZero(setting.spDate[2]));

                switch (d) {
                    // 하루 전
                    case 'pre':
                        b = -1;
                    break;
                    // 하루 후
                    case 'next':
                        b = +1;
                    break;
                    default:
                        b = 0;
                    break;
                };

                // 기준일 업데이트
                setting.dateTo = new Date(setting.dateTo.getFullYear(), setting.dateTo.getMonth(), setting.dateTo.getDate() + b );

                dom.dateM.innerHTML = '';
                dom.btns = dom.dateM.getElementsByTagName('button');

                // 설정된 기준일 기준 앞뒤 16일 루프
                for (; s < t; s++ ) {
                    // 기준일 앞뒤로 나열
                    var a0 = new Date(setting.dateTo.getFullYear(), setting.dateTo.getMonth(), ( setting.dateTo.getDate() + s )),
                        a1 = a0.toDateString(),
                        a2 = setting.dateTo.toDateString(), // 오늘날짜에서 서버 날짜로 변경 new Date().toDateString(),
                        b0 = a0.getDate(),
                        c0 = a0.getMonth(),
                        d0 = a0.getFullYear(),
                        e0 = a0.getDay(),
                        f0 = setting.days[e0], // 일
                        f1 = setting.daysEn[e0], // 일 - 영문
                        m0 = d0+''+dS.util.number.addZero(c0 + 1)+''+dS.util.number.addZero(b0), // 화면상의 날짜들
                        n0 = setting.today.split('.').join(''), // 오늘
                        //o0 = (Number(n0) > Number(m0)) ? 'disabled' : '', // 오늘이전이면 비활성화
                        p0 = m0.slice(0,4)+'.'+m0.slice(4,6)+'.'+m0.slice(6,8),
                        g0 = '<span class="ir">'+ d0 +'년 '+ (c0 + 1) +'월</span>',
                        h0 = '<button class="disabled" type="button" date-data='+ p0 +'>'+ g0 +'<em style="pointer-events:none;">'+ b0 + //disabled
                                '<span style="pointer-events:none;" class="ir">일</span></em>' +
                                '<span class="day-kr" style="pointer-events:none;'+krCon+'">'+ f0 +'</span>' +
                                '<span class="day-en" style="pointer-events:none;'+enCon+'">'+ f1 +'</span>' +
                             '</button>',
                        l0 = undefined;
                    i++;

                    // 기준일 저장
                    if (s === 0) {
                        l0 = new Date(a0.getFullYear(), a0.getMonth(), a0.getDate());
                        setting.lsDate = l0.getFullYear() + '.' + dS.util.number.addZero(Number(l0.getMonth() + 1)) + '.' + dS.util.number.addZero(l0.getDate()); // 마지막 날짜 저장
                    };

                    // 오늘
                    if (a1 === a2) {
                        dom.dateM.insertAdjacentHTML('beforeend', h0);

                        c = i;

                    // 그 외 날짜들
                    } else {
                        // 일요일, 공휴일
                        if (e0 === 0) {
                            j.push(i);
                        // 토요일
                        } else if (e0 === 6) {
                            k.push(i);
                        };
                        dom.dateM.insertAdjacentHTML('beforeend', h0);
                    };
                    dom.btns[i].setAttribute('month', c0);
                };
                // 좌우
                dom.btns[0].setAttribute('tabindex', -1);
                dom.btns[dom.btns.length - 1].setAttribute('tabindex', -1);
                // 오늘, 내일
                if (c !== undefined && c < dom.btns.length - 1) {
                    var ccn = dom.btns[c].className,
                        cct = dom.btns[c].querySelector('span.day-kr'),
                        cctE = dom.btns[c].querySelector('span.day-en'),
                        tcn = dom.btns[c + 1].querySelector('span.day-kr'),
                        tcnE = dom.btns[c + 1].querySelector('span.day-en');

                    //dom.btns[c].className = (ccn === '') ? 'on' : ccn + ' on';
                    $(".date-area button[date-data='"+setting.today+"'] .day-kr").text("오늘")
                            .closest("button").next().find(".day-kr").text("내일");
                };

                // 일요일 클래스 삽입
                j.forEach(function(val, key) {
                    //dom.btns[val].className = 'holi';
                    $(dom.btns[val]).addClass('holi');
                });

                // 토요일 클래스 삽입
                k.forEach(function(val, key) {
                    //dom.btns[val].className = 'sat';
                    $(dom.btns[val]).addClass('sat');
                });

                // 서버에서 온 휴일 검색 2019.05.27 추가
                holidaysFromServer.forEach(function(val, key) {
                    if (val !== undefined)
                    {
                        var tD = val.slice(0,4) + '.' + val.slice(4,6) + '.' + val.slice(6,val.length)
                        $(document.querySelectorAll('[date-data="'+ tD +'"]')).addClass('holi');
                    };
                });

                // 존재하는 월들 검색
                setting.mnt = new Array();
                for (var z = 0; z < dom.btns.length - 1; z++) {
                    var x = dom.btns[z].getAttribute('month');
                    if (setting.mnt.indexOf(x) === -1 ) setting.mnt.push(x);
                };

                // 년 월 표시가 두개 인 경우
                if (setting.mnt.length > 1) {
                    setting.mnt.forEach(function(val, key) {
                        var val	 = Number(val),
                            tbtn	= dom.dateM.querySelectorAll('[month="'+ val +'"]'),
                            tyear   = tbtn[0].querySelectorAll('span')[0].innerHTML.split('년')[0],
                            byear   = dom.root.querySelectorAll('.year');

                        byear[key].innerHTML = '';
                        byear[key].insertAdjacentHTML('beforeEnd', tyear +'.'+ dS.util.number.addZero(val + 1));
                        byear[key].style.opacity = 1;

                        if (tbtn[tbtn.length - 1].querySelector('em').innerText === '1일') byear[1].style.opacity = 0;
                        // 첫번째 년도
                        if (key === 0) byear[key].style.left = tbtn[key].offsetLeft + setting.dgap;
                        // 두번째 년도
                        if (key === 1) byear[key].style.left = tbtn[0].offsetLeft - 40 + 'px';
                    });
                // 년 월 표시가 한개 인 경우
                } else {
                    var tbtn = dom.dateM.querySelectorAll('[month="'+ setting.mnt[0] +'"]'),
                        tyear   = tbtn[0].querySelectorAll('span')[0].innerHTML.split('년')[0],
                        byear   = dom.root.querySelectorAll('.year');

                    dS.css.set({ target:byear, property: { opacity:0 } });

                    byear[0].innerHTML = '';
                    byear[0].insertAdjacentHTML('beforeEnd', tyear +'.'+ dS.util.number.addZero(Number(setting.mnt[0]) + 1));
                    byear[0].style.opacity = 1;

                    dS.css.set({ target:byear[0], property: { left:tbtn[0].offsetLeft + setting.dgap, opacity:1 } });
                };

                // 오늘 이전으로 이동불가하게 화살표 버튼 막기
                v = dom.root.querySelectorAll('.date-area .wrap button')[1].getAttribute('date-data');

                (v.split('.').join('') <= setting.today.split('.').join(''))
                ? dom.pnbtns[0].setAttribute('disabled', true)
                : dom.pnbtns[0].removeAttribute('disabled', false);

                // 서버에서 받은 날짜 이후로 이동불가하게 화살표 버튼 막기
                forwardArr  = dom.root.querySelectorAll('.date-area .wrap button')[t - 1].getAttribute('date-data');

                if(lastActDate.length > 0){
                    (forwardArr.split('.').join('') >= lastActDate.split('.').join(''))
                    ? dom.pnbtns[1].setAttribute('disabled', true)
                    : dom.pnbtns[1].removeAttribute('disabled', false);
                }
                else {
                    dom.pnbtns[1].setAttribute('disabled', false);
                }


                dS.css.set({ target: dom.dateM, property: { left: '-'+ setting.dwidth +'px' } });

                // 좌우 버튼 클릭시에는 on 클래스 변경 안함

                if (d !== 'next' && d !== 'pre')
                {
                    $(document.querySelectorAll('.date-list .date-area button')).removeClass('on');
                    //mbThCalendar.lastSavedDate = undefined;
                    if (opts.mnDate !== '')
                    {
                        mbThCalendar.lastSavedDate = opts.mnDate;
                        //$(document.querySelectorAll('[date-data="'+ mbThCalendar.lastSavedDate +'"]')).addClass('on');
                    };

                    //$(document.querySelectorAll('.date-list .date-area button')[1]).addClass('on')
                }
                else
                {
                    //console.log('pre next', mbThCalendar.lastSavedDate)

                    if (mbThCalendar.lastSavedDate !== undefined)
                    {
                        $(document.querySelectorAll('[date-data="'+ mbThCalendar.lastSavedDate +'"]')).addClass('on');
                    }
                    else
                    {
                        $(document.querySelectorAll('[date-data="'+ setting.lastDate +'"]')).addClass('on');
                    };
                };

                if (setting.count === 1) $(document.querySelectorAll('[date-data="'+ allPlayDates[0] +'"]')).addClass('on');

                // 공휴일 업데이트 콜백
                mbThCalendar.events.updateHoli();
                mbThCalendar.events.updateDis();
                if (typeof opts.callback === 'function') opts.callback(undefined, opts.mnDate);

            }
            , updateHoli: function()
            {
                if (setting.fetchedHoli !== undefined && setting.fetchedHoli.length > 0)
                {
                    setting.fetchedHoli.forEach(function(el, i) {
                        $(document.querySelectorAll('[date-data="'+ el +'"]')).addClass('holi');
                    });
                }
            }
            , updateDis: function()
            {
                if (setting.fetchedDis !== undefined && setting.fetchedDis.length > 0)
                {
                    setting.fetchedDis.forEach(function(el, i) {
                        $(document.querySelectorAll('[date-data="'+ el +'"]')).removeClass('disabled');
                    });
                }
            }
        }
    }
}());

/**
 * 회사소개 상단 스크롤
 * main-menu 클래스 내에 'MEGABOX 소개' 텍스트 검색 후 적용
 * 예 mbCorpScoll.init({ target:'main-menu' });
 **/
var mbCorpScoll = mbCorpScoll || {};
mbCorpScoll = (function() {
    'use strict';
    var setting = new Object(),
        self	= undefined,
        dom	 = undefined;

    return {
        dom: {},
        init: function(opts) {
            self	= this;
            dom	 = self.dom;

            var priority = undefined;
            if (document.getElementsByClassName(opts.target)[0] !== undefined) {
                priority = document.getElementsByClassName(opts.target)[0].getElementsByTagName('a')[1].innerText;
            } else {
                return false;
            };

            if (typeof opts !== 'undefined') for (var k in opts) setting[k] = opts[k];
            if (priority === 'MEGABOX 소개') self.setUI();
        },
        setUI: function() {

            dom.head	= document.getElementById('header');
            dom.menu	= document.getElementsByClassName(setting.target)[0];
            dom.mask	= document.getElementsByClassName('bg-mask')[0];
            dom.otxt	= document.getElementsByClassName('main-text')[0];
            dom.txt	 = dom.otxt.cloneNode(true);
            dom.tab	 = document.getElementsByClassName('mid-tab')[0];

            // 서브화면에 tab이 없을 경우 처리
            if (dom.tab === undefined) dom.tab = document.createElement('div');

            dom.otxt.style.display  = 'none';
            dom.head.style.cssText  = 'position:fixed!important;';
            dom.mask.style.overflow = 'hidden';
            dom.menu.style.cssText  = 'position:absolute!important;top:0;min-width:1100px;';
            dom.tab.style.cssText   = 'position:fixed!important;z-index:20;';
            dom.txt.style.cssText   = 'margin-top:0;';

            dom.mask.insertBefore(dom.txt, dom.mask.firstChild);

            setting.dheight = dom.head.offsetHeight;
            setting.mheight = 80;
            setting.ocname  = dom.head.className;

            self.addEvents();
        },
        addEvents: function() {
            dS.events.add({ target:document, events: 'scroll', function: self.events.scroll, params:undefined });
        },
        events: {
            scroll: function() {
                var e = window.event,
                    l = dS.browser.getSL(),
                    s = dS.browser.getST();

                // dom.head.style.transform = 'translateX(-'+ l +'px)'; ie9에서 작동 안함
                // dom.tab.style.transform = 'translateX(-'+ l +'px)';
                dom.head.style.left = '-'+ l + 'px';
                dom.tab.style.left  = '-'+ l + 'px';

                // 클래스 토글
                if (s > 0) {
                    $(dom.head).addClass('scroll');
                } else  {
                    dom.head.className	  = setting.ocname;
                    dom.head.style.height   = setting.dheight + 'px';
                };
                // 텍스트 제어
                if (s >= 455) {
                    // 좁아졌을때 고정
                    dom.txt.style.top = '125px';
                } else if (s >= 220) {
                    // 중간 움직임
                    dom.txt.style.top = 580 - s + 'px';
                } else {
                    // 길어졌을때 고정
                    dom.txt.style.top = '380px';
                };
                // 탭 제어
                if (s >= 690) { // 510에서 변경
                    // 고정
                    dom.head.style.height   = setting.mheight + 'px';
                    dom.tab.style.top	   = setting.mheight + 'px';
                } else {
                    // 움직임
                    dom.head.style.height   = setting.dheight - s + 'px';
                    dom.tab.style.top	   = setting.dheight - s + 'px';
                };
            }
        }
    };
}());


/**
 * 메인
 * main-header 클래스에 자동 적용
 * 예 mbMain.init({ target:'main-header' });
 **/
var mbMain = mbMain || {};
mbMain = (function() {
    'use strict';
    var setting = new Object(),
        self	= undefined,
        dom	 = undefined;
    return {
        dom: {},
        init: function(opts) {
            self	= this;
            dom	 = self.dom;

            var priority = document.getElementsByClassName(opts.target);

            if (typeof opts !== 'undefined') for (var k in opts) setting[k] = opts[k];
            if (priority !== undefined && priority.length > 0) self.setUI();
        },
        setUI: function() {
            dom.bg		  = document.querySelector('.section.main-movie').children[0]; // 상단 배경
            dom.mlist	   = document.getElementsByClassName('movie-list-info'); // 상단 포스터 리스트
            dom.bkmk		= document.querySelectorAll('.nav-main li'); // 우측 북마크
            dom.sec		 = document.querySelectorAll('.section'); // 메인 섹션
            dom.view		= document.querySelector('.slider-view'); // 슬라이드영역  박스
            dom.cont		= document.querySelectorAll('.slider-view .cell'); // 슬라이드영역  박스
            dom.contChk		= document.querySelectorAll('.main-condition');
            dom.contT	   = document.querySelectorAll('.slider-view .cell .txt');
            dom.contB	   = document.querySelectorAll('.slider-view .cell .bg');
            dom.rect		= document.querySelectorAll('.slider-control .page')[0]; // 슬라이드컨트롤 내 섹션
            dom.numb		= document.querySelectorAll('.slider-control .page-count')[0]; // 슬라이드컨트롤 내 숫자
            dom.btna		= document.querySelectorAll('.slider-control .util .btn-prev, .slider-control .util .btn-next'); // 슬라이드컨트롤 내 좌우 버튼
            dom.btnp		= document.querySelectorAll('.slider-control .util .btn-pause, .slider-control .util .btn-play'); // 슬라이드컨트롤 내 시작정지 버튼

            setting.cid	 = 0; // 슬라이딩영역 id;
            setting.chto	= null; // 포스터 포커스 타임아웃
            setting.sto	 = null; // 스크롤 타임아웃
            setting.tto	 = null;
            setting.st	  = dS.browser.getST(); // 스크롤 탑
            setting.seca	= new Array(); // 각 섹션 별 offsetTop 값 Array

            if (document.querySelectorAll('.main-condition').length > 0)
            {
                dS.css.set({ target:dom.cont, property: { display:'none', position: 'absolute', float:'none' } });
                dS.css.set({ target:dom.contT, property: { top:'100px', opacity:0 } }); // 0px로 애니메이션
                dS.css.set({ target:dom.contB, property: { left:'450px', opacity:0 } }); // 300px로 애니메이션
                dS.css.set({ target:dom.contT[0], property: { top:'0px', opacity:1 } }); // 0px로 애니메이션
                dS.css.set({ target:dom.contB[0], property: { left:'300px', opacity:1 } }); // 300px로 애니메이션
                dom.view.style.width		= '1100px';
                if(dom.cont.length > 0) dom.cont[0].style.display   = 'block';
                dom.rect.innerHTML		  = '';
                dom.btna[0].setAttribute('disabled', true);
                dom.btna[0].style.opacity = 0.5;
                for (var i = 0; i < dom.sec.length; i++) setting.seca.push(dom.sec[i].offsetTop); // 각 섹션 별 offsetTop 값 저장
                for (var j = 0; j < dom.cont.length; j++) { // 슬라이딩 갯수만큼 박스 설정
                    var cl = (j === 0) ? 'on' : '';
                    dom.rect.insertAdjacentHTML('beforeEnd', '<span class="'+ cl +'" style="width:'+ (1 / dom.cont.length) * 100 +'%"></span>');
                };
                dom.numb.innerHTML = '';
                dom.numb.insertAdjacentHTML('beforeEnd', '1 / ' + dom.cont.length);

                $(dom.sec[0]).addClass('on');
                $(dom.btnp).removeClass('on');
                $(dom.btnp[0]).addClass('on');
            }





            self.addEvents();
        },
        addEvents: function() {
            dS.events.add({ target:document, events:'scroll', function:self.events.scroll, params:null }); // 스크롤 이벤트
            //dS.events.add({ target:dom.mlist, events:'focus', function:self.events.focusm, params:null }); // 상단 포스터 포커스 이벤트
            dS.events.add({ target:dom.bkmk, events:'click mouseenter mouseleave', function:self.events.ckbk, params:null }); // 우측 북마크 이벤트
            dS.events.add({ target:dom.btna, events:'click', function:self.events.slideArr, params:null }); // 슬라이딩 좌우 버튼
            dS.events.add({ target:dom.btnp, events:'click', function:self.events.slidePS, params:null }); // 슬라이딩 재생 정지 버튼

            if (dom.contChk.length > 0) self.events.slideTick();
        },
        events: {
            // 상단 포스터 포커스
            focusm: function(e) {
                var e = e || window.event,
                    t = e.currentTarget,
                    a = t.children,
                    b = undefined,
                    c = 0,
                    d = undefined,
                    e = dom.bg.getAttribute('style').split(':')[1];

                for (; c < a.length; c++) {
                    if (a[c].nodeName === 'IMG') b = a[c];
                };

                d = b.getAttribute('data-url');
                if (e.search(d) === -1) {
                    setting.chto = null;
                    clearTimeout(setting.chto);
                    setting.chto = setTimeout(self.events.chngi.bind(this, d), 1000);
                };
            },
            // 상단 포스터 포커스 시 이미지 변경
            chngi: function(d) {
                dom.bg.style.cssText = 'background-image:url('+ d +');';
            },
            ckbk: function() {
                var e = arguments[0] || window.event,
                    t = e.currentTarget,
                    a = Array.prototype.slice.call(dom.bkmk),
                    i = a.indexOf(t);

                e.preventDefault();

                switch (e.type) {
                    case 'click':
                        $(dom.sec).removeClass('on');
                        for (var j = 0; j < dom.bkmk.length; j++ ) {
                            dom.bkmk[j].className = '';
                            dom.bkmk[j].querySelector('span').style.color = '#503396';
                        };
                        $(dom.sec[i]).addClass('on');
                        $(document.documentElement).finish().animate({ 'scrollTop' : dom.sec[i].offsetTop }, 300, 'easeOutCubic');
                    break;
                    case 'mouseenter':
                        dom.bkmk[i].className   = 'active';
                        dom.bkmk[i].querySelector('span').style.color = '#fff';
                    break;
                    case 'mouseleave':
                        for (var j = 0; j < dom.bkmk.length; j++ ) {
                            dom.bkmk[j].className = '';
                        };

                        var to = document.querySelectorAll('.section.on')[0],
                            ta = Array.prototype.slice.call(dom.sec),
                            ti = ta.indexOf(to);

                        dom.bkmk[ti].className = 'active';
                        dom.bkmk[ti].querySelector('span').style.color = '#fff';
                    break;
                    default:
                    break;
                };
                //TweenLite.to(window, 1, { scrollTo:{ y:dom.sec[i].offsetTop }, ease: Power1.easeOutCubic });

            },
            scroll: function() {
                var arr = new Array();
                setting.st = dS.browser.getST();

                if (setting.sto !== null) {
                    clearTimeout(setting.sto);
                    setting.sto = null;
                };
                setting.seca.forEach(function(v, k) {
                    if (setting.st + 90 >= v) arr.push(k);
                });
                setting.sto = setTimeout(function() {
                    $(dom.sec).removeClass('on');
                    for (var j = 0; j < dom.bkmk.length; j++ ) {
                        dom.bkmk[j].className = '';
                        dom.bkmk[j].querySelector('span').style.color = '#503396';
                    };
                    //dom.bkmk[arr[arr.length - 1]].className = 'active';
                    //dom.bkmk[arr[arr.length - 1]].querySelector('span').style.color = '#fff';
                    //$(dom.sec[arr[arr.length - 1]]).addClass('on'); // ie9에서 classlist 작동안함
                    //dS.dom.addclass({ target:dom.sec[arr[arr.length - 1]], class:'on' })
                }, 300);
            },
            slidePS: function() {
                var e = arguments[0] || window.event,
                    t = e.currentTarget,
                    a = t.getAttribute('class').split('-')[1];

                $(dom.btnp).removeClass('on');
                if (setting.tto !== null) {
                    clearTimeout(setting.tto);
                    setting.tto = null;
                };

                switch (a) {
                    case 'pause on':
                        $(dom.btnp[1]).addClass('on');
                    break;
                    default:
                        $(dom.btnp[0]).addClass('on');
                        self.events.slideTick();
                    break;
                }
            },
            slideArr: function() {
                var e = arguments[0] || window.event,
                    t = undefined,
                    a = undefined;

                if (e !== undefined && e.type === 'click') {
                    t = e.currentTarget,
                    a = t.getAttribute('class').split('-')[1];

                    e.preventDefault();


                    if (setting.tto !== null) {
                        clearTimeout(setting.tto);
                        setting.tto = null;
                    };

                    $(dom.btnp).removeClass('on');
                    $(dom.btnp[1]).addClass('on');
                };

                switch (a) {
                    case 'prev':
                        (setting.cid > 0) ? setting.cid-- : setting.cid = 0;
                    break;
                    case 'next':
                        (setting.cid < dom.cont.length - 1) ? setting.cid++ : setting.cid = dom.cont.length - 1;
                    break;
                    default:
                        (setting.cid < dom.cont.length - 1) ? setting.cid++ : setting.cid = 0;
                    break;
                };

                self.events.slideUpdate();
                self.events.slideObj();
            },
            slideTick: function() {
                clearTimeout(setting.tto);
                setting.tto = null;
                setting.tto = setTimeout(self.events.clock, 5000);
            },
            clock: function() {
                self.events.slideTick();
                self.events.slideArr();
            },
            slideUpdate: function() {
                dom.numb.innerHTML = '';
                dom.numb.insertAdjacentHTML('beforeEnd', ''+ Number((setting.cid) + 1) +' / ' + dom.cont.length);
                for (var j = 0; j < dom.cont.length; j++) dom.rect.getElementsByTagName('span')[j].className = '';
                if(dom.rect.getElementsByTagName('span').length > 0 ){
                	dom.rect.getElementsByTagName('span')[setting.cid].className = 'on';
                }

                switch (setting.cid) {
                    case 0:
                        dom.btna[0].setAttribute('disabled', true);
                        dom.btna[0].style.opacity = 0.5;
                        dom.btna[1].removeAttribute('disabled');
                        dom.btna[1].style.opacity = 1;
                    break;
                    case dom.cont.length - 1:
                        dom.btna[0].removeAttribute('disabled');
                        dom.btna[0].style.opacity = 1;
                        dom.btna[1].setAttribute('disabled', true);
                        dom.btna[1].style.opacity = 0.5;
                    break;
                    default:
                        dom.btna[0].removeAttribute('disabled');
                        dom.btna[1].removeAttribute('disabled');
                        dom.btna[0].style.opacity = 1;
                        dom.btna[1].style.opacity = 1;
                    break;
                };
            },
            slideObj: function() {
                dS.css.set({ target:dom.cont, property: { display:'none' } });
                dS.css.set({ target:dom.contT, property: { top:'100px', opacity:0 } }); // 0px로 애니메이션
                dS.css.set({ target:dom.contB, property: { left:'450px', opacity:0 } }); // 300px로 애니메이션
                dom.cont[setting.cid].style.display   = 'block';
                TweenLite.to(dom.contT[setting.cid], .5, { top:0, opacity:1, ease: Power1.easeOutCubic });
                TweenLite.to(dom.contB[setting.cid], .8, { left:300, opacity:1, ease: Power1.easeOutCubic });
            }
        }
    }
}());

/**
 * 이벤트 메인
 * event-top-slide 클래스에 자동 적용
 * 예 mbEvtMain.init({ target:'event-top-slide' });
 **/
var mbEvtMain = mbEvtMain || {};
mbEvtMain = (function() {
    'use strict';
    var setting	 = new Object()
        , target	= {}
        , self	  = undefined
        , dom	   = undefined;
    return {
        dom: {}
        , init: function(opts) {
            self	= this;
            dom	 = self.dom;

            var priority = document.getElementsByClassName(opts.target);

            if (typeof opts !== 'undefined') for (var k in opts) setting[k] = opts[k];

            setting.intv = 5000;

            if (priority !== undefined && priority.length > 0) self.setUI();
        }
        , setUI: function() {
            target.sld		  = document.querySelector('.slide'); // 슬라이드 영역 껍질
            target.sldEl		= target.sld.querySelector('ul'); // 슬라이드 영역
            target.sldEls	   = target.sldEl.querySelectorAll('li'); // 개별 요소
            target.mArr		 = document.querySelectorAll('.btn-control')[0]; // 좌우 버튼

            target.ind		  = document.querySelector('.slider-control .page'); // 인디케이터
            target.sArr		 = document.querySelectorAll('.util .btn-prev, .util .btn-next'); // 타이머 영역 좌우 버튼
            target.psBtn		= document.querySelectorAll('.util .btn-pause, .util .btn-play');
            target.numbs		= document.querySelector('.slider-control .page-count');

            setting.id		  = 0; // 초기 id 입력
            setting.len		 = target.sldEls.length; // 개별 요수 갯수
            setting.dw		  = target.sldEls[0].clientWidth + 40 // 개별 요소 너비;
            setting.trsfm	   = (dS.browser.brwIsIE9()) ? '-ms-transform' : 'transform';
            setting.tmOut	   = undefined;
            setting.tmOutAniPre = undefined;
            setting.tmOutAni	= undefined;

            setting.run		 = true;
            setting.onTrans	 = false;

            // 요소가 3개 미만일 경우 좌우 버튼 비활성화
            if (setting.len < 3) {
                self.events.dom.disable();
            } else {
                //target.sldEl.prepend(target.last);
                var tObj = {};
                tObj[setting.trsfm] = 'translateX(0px)';
                tObj.position = 'absolute';
                tObj.width = setting.dw * setting.len + 'px';
                //tObj.transition = 'none';
                dS.css.set( { target:target.sldEl, property:tObj });
            };

            dS.css.set({
                target:target.sld, property:
                {
                    position:'relative',
                    height:target.sldEls[0].clientHeight + 20 + 'px'
                }
            });

            dS.css.set({
                target:target.mArr, property:{ zIndex: 2 }
            });

            // 이미지갯수만큼 인디케이터 생성
            target.ind.innerHTML = '';
            for (var i = 0; i < target.sldEls.length; i++) {
                target.ind.insertAdjacentHTML('beforeEnd', '<span style="width:'+ 100 / setting.len +'%"></span>');
                if (i === 0) target.ind.querySelector('span').className = 'on';
            };

            self.addEvents();
        }
        , addEvents: function() {
            dS.events.add({ target:target.mArr, events:'click', function:self.events.trigger, params:undefined });
            dS.events.add({ target:target.sArr, events:'click', function:self.events.trigger, params:undefined });
            dS.events.add({ target:target.psBtn, events:'click', function:self.events.toggle, params:undefined });
            dS.events.add({ target:target.sldEl, events:'transitionend oTransitionEnd webkitTransitionEnd', function:self.events.release, params:undefined });
            self.events.time.run();
            self.events.dom.updateNumbs();
        }
        , events: {
            dom: {
                disable: function() {
                    dS.css.set({ target:target.mArr.children, property:{ opacity:.5 } });
                    //dS.css.set({ target:target.sArr, property:{ opacity:.5 } });
                    for (var j = 0; j < target.sArr.length; j++) {
                        dS.css.set({ target:target.mArr.children[j], property: { 'pointer-events':'none' } });
                        dS.css.set({ target:target.sArr[j], property: { 'pointer-events':'none' } });
                    };
                }
                , enable: function() {
                    dS.css.set({ target:target.mArr.children, property:{ opacity:1 } });
                    //dS.css.set({ target:target.sArr, property:{ opacity:1 } });
                    for (var j = 0; j < target.sArr.length; j++) {
                        dS.css.set({ target:target.mArr.children[j], property: { 'pointer-events':'auto' } });
                        dS.css.set({ target:target.sArr[j], property: { 'pointer-events':'auto' } });
                    };
                }
                , updateNumbs: function() {
                    target.numbs.innerHTML = '';
                    target.numbs.insertAdjacentHTML('beforeEnd', '<span>'+ (setting.id + 1) +'</span>&nbsp;/&nbsp<em>'+ setting.len +'</em>');

                    for (var i = 0; i < target.sldEls.length; i++) target.ind.children[i].className = '';
                    target.ind.children[setting.id].className = 'on';
                }
            }
            , time: {
                clear: function() {
                    if (setting.tmOut !== null) {
                        clearTimeout(setting.tmOut);
                        setting.tmOut = null;
                    };
                    if (setting.tmOutAni !== null) {
                        clearTimeout(setting.tmOutAni);
                        setting.tmOutAni = null;
                    };
                }
                , run: function() {
                    self.events.time.clear();


                    setting.tmOut = setTimeout(self.events.slide, setting.intv);
                }
            }
            , toggle: function(e) {
                var e = e || window.event
                    , t = e.currentTarget;

                switch (setting.run) {
                    case true:
                        setting.run = false;
                        $(t).removeClass('on');
                        $(t.nextElementSibling).addClass('on');
                        self.events.time.clear();
                    break;
                    case false:
                        setting.run = true;
                        $(t).removeClass('on');
                        $(t.previousElementSibling).addClass('on');
                        self.events.time.run();
                    break;
                };
            }
            , trigger: function(e) {
                var e = e || window.event
                    , t = e.target
                    , ckDir = t.getAttribute('class')

                e.preventDefault();

                if (setting.onTrans) return false;
                self.events.slide(ckDir);
            }
            , slide: function() {
                var args	= arguments[0]
                    //, lPos  = Number(getComputedStyle(target.sldEl)[setting.trsfm].getMatrix(4))
                    , lTrs  = getComputedStyle(target.sldEl)[setting.trsfm]
                    , lPos  = Number(String.prototype.getMatrix.call(lTrs, 4))
                    , tPos  = undefined
                    , tObj  = {};

                self.events.time.clear();
                self.events.dom.disable();
                setting.onTrans = true;

                if (args === 'btn-prev') {
                    target.sldEl.style.transition   = 'none';
                    target.last					 = document.querySelectorAll('.slide ul li')[setting.len - 1];

                    target.sldEl.insertBefore(target.last, document.querySelectorAll('.slide ul li')[0]);
                    tObj[setting.trsfm] = 'translateX('+ Number(-lPos - setting.dw) +'px)';
                    tPos				= 0;
                    dS.css.set({ target:target.sldEl, property:tObj });

                    if (setting.tmOutAniPre !== null) {
                        clearTimeout(setting.tmOutAniPre);
                        setting.tmOutAniPre = null;
                    };

                    setting.tmOutAniPre = setTimeout(function() {
                        target.sldEl.style.transition = setting.trsfm + ' .5s ease-out 0s';
                        tObj[setting.trsfm] = 'translateX('+ tPos +'px)';
                        dS.css.set({ target:target.sldEl, property:tObj });
                    }, 10);
                    setting.tmOutAni = setTimeout(function() {
                        (setting.id > 0) ? setting.id-- : setting.id = setting.len - 1;

                        self.events.dom.enable();
                        self.events.time.run();
                        self.events.dom.updateNumbs();
                        setting.onTrans = false;
                    }, 490);
                } else {
                    target.sldEl.style.transition = setting.trsfm + ' .5s ease-out 0s';
                    tPos = -setting.dw + lPos;
                    tObj[setting.trsfm] = 'translateX('+ tPos +'px)';
                    dS.css.set({ target:target.sldEl, property:tObj });

                    setting.tmOutAni = setTimeout(function() {
                        target.sldEl.style.transition   = 'none';
                        target.first					= document.querySelectorAll('.slide ul li')[0];
                        target.sldEl.appendChild(target.first);
                        tObj[setting.trsfm] = 'translateX(0px)';
                        dS.css.set({ target:target.sldEl, property:tObj });

                        (setting.id < setting.len - 1) ? setting.id++ : setting.id = 0;

                        self.events.dom.enable();
                        self.events.time.run();
                        self.events.dom.updateNumbs();
                        setting.onTrans = false;
                    }, 500);
                };
            }
            , release: function() {
                self.events.dom.enable();
            }
        }
    }
}());

/*
* mbImgArr.init({ target:'.stair-slide-list', initN:0, deftW:260, deftR:4 });
* mbImgArr.events.load(); 추가 로드
*/
var mbImgArr = mbImgArr || {};
mbImgArr = (function() {
    'use strict';
    var setting = new Object()
        , self	= undefined
        , dom	= undefined;
    return {
        dom: {
            root	: 'body'
            , wrap	: undefined // 포스터 썸네일 전체 틀
            , mbtn	: undefined // 더보기 버튼
            , list	: undefined // 포스터 썸네일 개별
            , view	: undefined // 확대보기 틀
            , imgc  : undefined // 확대보기 개별
        }
        , init: function(opts) {
            self	= this;
            dom	 = self.dom;

            var priority = document.getElementsByClassName(opts.target);

            if (priority.length === 0) return false;
            if (typeof opts !== 'undefined') for (var k in opts) setting[k] = opts[k];

            setting.trsfm = (dS.browser.brwIsIE9()) ? '-ms-transform' : 'transform'; // 브라우져별 transform 옵션
            setting.initN = 0;
            setting.initR = 0; // array 생성용
            setting.deftG = 20; // 이미지 간격
            setting.arrsO = []; // 변환 전 높이 저장
            setting.arrsH = []; // 행 별 높이 저장
            setting.arrsT = []; // 가장 높은 줄 추출용
            setting.strtR = -1; // 행
            setting.strtC = -1; // 열
            setting.talsR = undefined; // 가장 높은 줄
            setting.shrtR = undefined; // 가장 낮은 줄
            setting.trnsD = 0.2; // 트랜지션 타이밍
            setting.rlcnt = 0; // 이미지 위치 변경 횟수
            setting.rlArr = []; // 이미지 위치 변경 정보
            setting.intv  = undefined; // 이미지 위치 변경 shuffle
            setting.tmot  = undefined;
            setting.cntI  = 0;
            setting.ldlI  = 0;
            setting.zId   = undefined; // 확대보기용 선택 id

            // 생성될 열 수 만큼 Array 입력
            for (; setting.initR < setting.deftR; setting.initR++ ) setting.arrsH.push(0);


            self.setUI();
        }
        , setUI: function() {
            dom.wrap	= document.querySelector('.'+setting.target);
            dom.mbtn	= dom.wrap.querySelector('.btn-more');
            dom.list	= dom.wrap.querySelectorAll('.thumb');
            dom.atgt	= dom.wrap.querySelectorAll('.thumb a');
            dom.view	= document.querySelector('.layer-stillcut-view');
            dom.imgc	= dom.view.querySelector('img');
            dom.pnbtn	= document.querySelectorAll('.layer-stillcut-view .btn-prev, .layer-stillcut-view .btn-next');
            dom.clsbtn	= document.querySelector('.layer-stillcut-view');

            dom.mbtn.style.position = 'relative';
            dom.mbtn.style.opacity	= 0;

            dS.css.set({ target:dom.list, property:{ opacity:0 } });

            self.addEvents();
        }
        , addEvents: function() {
            self.events.load();
            dS.events.add({ target:dom.mbtn, events:'click', function:self.events.load });
            dS.events.add({ target:dom.wrap, events:'click', function:self.events.detail });
            dS.events.add({ target:dom.pnbtn, events:'click', function:self.events.nav });
            dS.events.add({ target:dom.clsbtn, events:'click', function:self.events.close });
        }
        , events: {
            load: function() {
                var e = e || window.event;

                if (e !== null && e !== undefined) {
                    if (e.type === 'click') e.preventDefault();
                };
                dom.mbtn.style.opacity	= 0;
                //dS.xhr({ url:'/html/test/posters.html', async:true, callback:self.events.prepare, method:'get' }); // test용 샘플 html
                dS.xhr({ url:'/on/oh/oha/Movie/selectMovieStillList.do?rpstMovieNo='+$("#rpstMovieNo").val()+'&currentPage='+$("#currentPage").val()+'&recordCountPerPage='+$("#recordCountPerPage").val(), async:true, callback:self.events.prepare, method:'get' });
            }
            , img: {
                cnt: function(v) {
                    dS.events.add({ target:v, events:'load', function:self.events.img.bindEvnt, param:undefined });
                }
                , bindEvnt: function(e) {
                    setting.ldlI++;
                    if (setting.ldlI === setting.cntI) self.events.draw({});
                }
            }
            , detail: function(e) {
                var e = e || window.event;

                e.preventDefault();

                if (e.target.nodeName === 'IMG') {

                    var t	   = e.target
                        , tg	= t.parentNode.parentNode
                        , ta	= Array.prototype.slice.call(dom.list);

                    setting.zId	= ta.indexOf(tg);

                    $(dom.view).addClass('on');
                    document.body.className = 'no-scroll';

                    self.events.chgImg();
                };
            }
            , nav: function(e) {
                var e = e || window.event
                    , t 	= e.currentTarget
                    , c 	= t.getAttribute('class');

                e.preventDefault();

                (c === 'btn-prev')
                ? (setting.zId <= 0) ? setting.zId = dom.list.length - 1 : setting.zId--
                : (setting.zId < dom.list.length -1) ? setting.zId++ : setting.zId = 0

                self.events.chgImg();
            }
            , chgImg: function() {
                var tsrc = dom.list[setting.zId].querySelector('img').getAttribute('src');
                tsrc = tsrc.replace('_380', '_1100');
                tsrc = tsrc.replace('_420', '_1280');
                dom.imgc.setAttribute('src', tsrc);
            }
            , close: function(e) {
                var e = e || window.event
                    , t = e.target
                    , c = t.getAttribute('class');

                e.preventDefault();

                if (c === 'iconset ico-layer-close' || t.nodeName === 'IMG') {
                    $(dom.view).removeClass('on');
                    document.body.className	= '';
                    dom.mbtn.style.opacity	= 1;
                };
            }
            , prepare: function() {
                var tmpDv 	= document.createElement('div')
                    , rsStr = this.responseText
                    , tmpCh = undefined
                    , tmpAr = []
                    , artAr = []
                    , imgs = undefined;

                setting.ldlI = 0;

                tmpDv.className = 'tempDiv';
                tmpDv.innerHTML = rsStr;
                tmpCh			= tmpDv.querySelectorAll('.thumb');

                dS.css.set({ target:tmpCh, property:{ display:'none', opacity:0 } });
                for (var a = 0; a < tmpCh.length; a++) tmpAr.push(a);
                setting.cntI = tmpCh.length;

                switch (setting.shffl) {
                    case true:
                        setting.intv = setInterval(function() {
                            var rn = Math.round(Math.random(1) * 10);
                            tmpAr.forEach(function(e, i) {
                                if (Number(e) === rn && artAr.indexOf(rn) === -1) {
                                    artAr.push(rn);
                                };
                            });
                            if (artAr.length === tmpAr.length) {
                                clearInterval(setting.intv);
                                setting.intv = null;

                                artAr.forEach(function(te, tk) {
                                    dom.wrap.insertBefore(tmpCh[te], dom.mbtn);
                                });
                                self.events.draw({});
                            };
                        }, 1);
                    break;
                    case false:
                        for (var i = 0; i < tmpCh.length; i++) dom.wrap.insertBefore(tmpCh[i], dom.mbtn);

                        imgs = document.querySelectorAll('.stair-slide-list img');
                        self.events.img.cnt(imgs);
                    break;
                };
            }
            , draw: function(opts) {
                // 동적으로 추가 로딩 시
                var ri		= 0
                    , rl	= document.querySelectorAll('.thumb');

                for (; ri < rl.length; ri++) rl[ri].removeAttribute('reloced');

                if (opts !== undefined) {
                    // 마지막에 위치가 변경된 이미지가 있다면 원상복귀
                    var ci = setting.rlArr.length - 1;
                    for (;ci > -1; ci--) {
                        var tObj				= {};
                        tObj[setting.trsfm] 	= 'translate('+ Number(setting.rlArr[ci].c.x) +'px, '
                            + Number(setting.rlArr[ci].c.y) +'px)';
                        tObj.transition			= 'none';
                        // tObj.transition			= setting.trsfm + ' .1s ease-out 0s';
                        // tObj.msTransition		= setting.trsfm + ' .1s ease-out 0s';
                        // tObj.WebkitTransition	= setting.trsfm + ' .1s ease-out 0s';

                        if (setting.rlArr[ci].e !== undefined) {
                            dS.css.set({
                                target:setting.rlArr[ci].e,
                                property:tObj
                            });
                            setting.rlArr[ci].e.setAttribute('row', setting.rlArr[ci].d.row);
                            setting.rlArr[ci].e.setAttribute('col', setting.rlArr[ci].d.col);
                        };
                        //console.clear();
                        //console.log('원복 정렬 줄:', setting.rlArr[ci].d.row, ' 열:',setting.rlArr[ci].d.col);
                    };

                    setting.initN	= dom.list.length; // 기존에 존재하는 포스터 이후 부터 시작
                    dom.list		= dom.wrap.querySelectorAll('.thumb');

                    dS.css.set({ target:dom.list, property:{ display:'block' } });

                };
                setting.rlArr = [];

                for (;setting.initN < dom.list.length; setting.initN++) {
                    setting.strtC++; // 가로 열이 네칸될때까지 증가
                    if (setting.initN % setting.deftR === 0) {
                        setting.strtR++; // 행 수 증가
                        setting.strtC = 0; // 열 수 초기화
                    };

                    var tgtTp	=	(setting.initN < setting.deftR)
                                    ? 0 // 첫번째 줄
                                    // 두번째 줄 부터 높이 계산
                                    // : Number(getComputedStyle(dom.list[setting.initN
                                    //	 - setting.deftR])[setting.trsfm].getMatrix(5))
                                    : Number(String.prototype.getMatrix.call(getComputedStyle(dom.list[setting.initN
                                        - setting.deftR])[setting.trsfm], 5))
                        , tgtHt	=	(setting.initN < setting.deftR)
                                    ? 0
                                    // 두번째 줄 부터 자신 바로 위 이미지의 높이 계산
                                    : dom.list[setting.initN - setting.deftR].querySelector('img').clientHeight
                        , tgtSm	=	tgtTp + tgtHt + setting.deftG
                        , tobe	=	(setting.initN < setting.deftR)
                                    ? (setting.strtR > 0) ? setting.deftG : 0
                                    : tgtSm
                        , tObj  = {};

                    tObj.opacity			= 1;
                    tObj[setting.trsfm] 	=  'translate('+ Number(setting.strtC * setting.deftW
                        + (setting.strtC * setting.deftG)) +'px, '+ setting.arrsH[setting.strtC] +'px)';
                    tObj.transition			= setting.trsfm + ', opacity .2s ease-out '+ setting.trnsD +'s';
                    tObj.msTransition		= setting.trsfm + ', opacity .2s ease-out '+ setting.trnsD +'s';
                    tObj.WebkitTransition	= setting.trsfm + ', opacity .2s ease-out '+ setting.trnsD +'s';

                    dS.css.set({ target:dom.list[setting.initN], property:tObj });
                    //console.log('초기 정렬 줄:', setting.strtR, ' 열:',setting.strtC);
                    dom.list[setting.initN].setAttribute('row', setting.strtR);
                    dom.list[setting.initN].setAttribute('col', setting.strtC);
                    setting.arrsH[setting.strtC] = setting.arrsH[setting.strtC]
                        + dom.list[setting.initN].querySelector('img').clientHeight + setting.deftG;
                };

                // 기존 높이값 저장
                setting.arrsO	= [];
                for (var ti = 0; ti < setting.arrsH.length; ti++) setting.arrsO.push(setting.arrsH[ti]);
                // 가장 높은 줄 확인 용
                setting.arrsT	= [];
                for (var tj = 0; tj < setting.arrsH.length; tj++) setting.arrsT.push(setting.arrsH[tj]);
                // 높은 순으로 저장
                setting.arrsT.sort(function(a, b) {
                    return b - a;
                });

                //self.events.setHeight();
                self.events.checkHeight();
            }
            , checkHeight: function() {
                setting.talsR	= setting.arrsO.indexOf(setting.arrsT[0]); // 가장 긴 줄
                setting.shrtR	= setting.arrsO.indexOf(setting.arrsT[setting.arrsT.length - 1]); // 가장 짧은 줄
                //console.log('[1] tallest line: '+setting.talsR + ' ,shortest line: '+setting.shrtR);
                dom.talsEs		= dom.wrap.querySelectorAll('[col="'+ setting.talsR +'"]'); // 가장 긴 줄 포스터들
                dom.shrtEs		= dom.wrap.querySelectorAll('[col="'+ setting.shrtR +'"]'); // 가장 짧은 줄 포스터들

                dom.talsE		= dom.talsEs[dom.talsEs.length - 1]; // 가장 긴 줄의 마지막 포스터
                //console.log('[1] original: ', setting.arrsO, '\ntallest: ', setting.arrsT[0]);
                self.events.checkArrange();
            }
            , checkArrange: function() {
                var rLen  = Math.ceil(dom.list.length / setting.deftR);

                // 가장 긴줄 마지막 요소 + 가장 짧은 줄이 가장 긴줄 보다 짧을 경우에만
                // + 마지막줄만 재정렬
                if (setting.arrsT[setting.arrsT.length - 1] + dom.talsE.clientHeight < setting.arrsT[0]
                    && rLen - 1 === Number(dom.talsE.getAttribute('row')) && rLen > 1) {
                    //console.log('[2] rearrange needed')//, setting.arrsT[setting.arrsT.length - 1], dom.talsE.clientHeight,
                    //setting.arrsT[setting.arrsT.length - 1] + dom.talsE.clientHeight);
                    setting.rlcnt++;
                    if (setting.rlcnt < setting.deftR - 2) {
                        self.events.setArrange();
                    } else {
                        self.events.setHeight();
                    };
                } else {
                    //console.log('[2] rearrange not needed');
                    self.events.setHeight();
                    return;
                };
            }
            // 재정렬
            , setArrange: function() {
                var newPx	= String.prototype.getMatrix.call(getComputedStyle(dom.shrtEs[0])[setting.trsfm], 4) // 가장 짧은 줄 x 값
                    , oldPh = setting.arrsT[setting.arrsT.length - 1] // 가장 짧은 줄 높이
                    , tObj	= {}
                    , cell	= {};

                // 이미지 위치 변경 전 데이터 저장 - 마지막줄만 위치 변경
                if (dom.talsE.getAttribute('reLoced') === null) {
                    cell 		= {};
                    cell.a 		= setting.arrsT; // 변경 전 array
                    cell.e 		= dom.talsE; // 위치 변경된 이미지
                    cell.c 		= { x: String.prototype.getMatrix.call(getComputedStyle(dom.talsE)[setting.trsfm], 4),
                                    y: String.prototype.getMatrix.call(getComputedStyle(dom.talsE)[setting.trsfm], 5) };
                    cell.d 		= { col: dom.talsE.getAttribute('col'), row: dom.talsE.getAttribute('row') };

                    // 위치가 변경된 이미지들을 저장
                    setting.rlArr.push(cell);
                };
                //console.log(setting.rlArr);
                tObj[setting.trsfm] 	= 'translate('+ Number(newPx) +'px, '+ Number(oldPh) +'px)';
                tObj.transition			= 'none';
                tObj.transition 		= setting.trsfm + ', opacity .1s ease-out .3s';
                tObj.msTransition 		= setting.trsfm + ', opacity .1s ease-out .3s';
                tObj.WebkitTransition 	= setting.trsfm + ', opacity .1s ease-out .3s';

                // 가장짧은줄 번호 입력
                dom.talsE.setAttribute('col', setting.shrtR);
                dom.talsE.setAttribute('reLoced', setting.rlcnt);
                dS.css.set({ target:dom.talsE, property:tObj });
                //console.log('현재 가장 짧은 열: ', setting.shrtR);

                // 기본값 초기화
                setting.strtC = -1;	// 열바꿈용
                setting.strtR = -1;	// 줄 바꿈용
                setting.initR = 0;	// 가장 긴 줄 추출용 Array 초기화용
                setting.arrsT = [];	// 가장 긴 줄 초기화

                for (; setting.initR < setting.deftR; setting.initR++ ) setting.arrsT.push(0);
                for (setting.initN = 0; setting.initN < dom.list.length; setting.initN++) {
                    // 행 번호가 바꼈으므로 검색 기준 변경
                    var tobeI = Number(dom.wrap.querySelectorAll('.thumb')[setting.initN].getAttribute('col'));
                    setting.strtC++;
                    if (setting.strtC % setting.deftR === 0) {
                        setting.strtC = 0;
                        setting.strtR++;
                    };
                    //console.log('재정렬 줄:', setting.strtR, ' 열:', tobeI, setting.strtC);

                    setting.arrsT[tobeI] = setting.arrsT[tobeI]
                        + document.querySelector('[col="'+ tobeI +'"][row="'+ setting.strtR +'"] img').clientHeight
                        + setting.deftG;
                };

                // 줄 높이가 바꼈으므로 기존 높이값도 변경
                setting.arrsO	= [];
                for (var ti = 0; ti < setting.arrsT.length; ti++) setting.arrsO.push(setting.arrsT[ti]);
                //console.log('[3] height changed: ', setting.arrsO);
                setting.arrsT.sort(function(a, b) {
                    return b - a;
                });

                self.events.checkHeight();
            }
            , setHeight: function() {
                setting.rlcnt 			= 0;
                dom.wrap.style.height	= setting.arrsT[0] + dom.mbtn.offsetHeight + 'px';
                dom.mbtn.style.top		= setting.arrsT[0] + 'px';
                dom.mbtn.style.opacity	= 1;
                //console.log('[4] =================================================================');

                if(window.fn_checkStilPage) {
                    fn_checkStilPage();
                }
            }
        }
    }
}());

$(function() {
	'use strict';
    if (typeof mbHead === 'object') mbHead.init(); // 상단 GNB
    if (typeof mbLayer === 'object') mbLayer.init(); // 레이어팝업
    if (typeof mbAlert === 'object') mbAlert.init(); // 레이어팝업
});
window.onload = function(){
//$(function() {
    'use strict';
    //if (typeof mbHead === 'object') mbHead.init(); // 상단 GNB
    //if (typeof mbAlert === 'object') mbAlert.init(); // 레이어팝업
    //if (typeof mbLayer === 'object') mbLayer.init(); // 레이어팝업
    if (typeof mbMain === 'object') mbMain.init({ target:'main-header' }); // 메인 공통
    if (typeof ticketMotion === 'object') ticketMotion.init(); // 상단 우측 예매 버튼
    //if (typeof atcToggle === 'object') atcToggle.init({ target:'faq-list', identifier:'on', nodeName:'ul' });
    //if (typeof viewToggle === 'object') viewToggle.init({ target:'story-box', identifier:'on', nodeName:'div' }); // 한줄평 목록
    //if (typeof selMovieToggle === 'object') selMovieToggle.init({ target:'select-post', identifier:'on' });
    //if (typeof mbThumGal === 'object') mbThumGal.init({ target:'stillcut-slide', effect:'flash' }); // effect '', 'sliding', 'flash' 중 택일
    //if (typeof mbMovieTip === 'object') mbMovieTip.init({ target:'post-top-area', option:'user' }); // 무비포스트 상세 - 이벤트 새로 만듬
    //if (typeof mbMovieTip === 'object') mbMovieTip.init({ target:'event-detail', option:'user' }); // 이벤트 상세 - 이벤트 새로 만듬
    //if (typeof mbImgArr === 'object') mbImgArr.init({ target:'stair-slide-list', deftW:260, deftR:4, shffl:false }); // 영화 갤러리 스틸컷
    if (typeof mbMovieRankFocus === 'object') mbMovieRankFocus.init({ target:['post-lank li > a','mypost-box > a'] });
    if (typeof mbMoviePsFocus === 'object') mbMoviePsFocus.init({ target:'post-list' }); // 영화 포스터
    if (typeof mbPostScroll === 'object') mbPostScroll.init({ target:'post-detail' });
    if (typeof mbThToggle === 'object') mbThToggle.init({ target:'accordion-list' });
    if (typeof mbCmnTooltip === 'object') mbCmnTooltip.init({ target:'tooltip' }); // 공통 툴팁
    if (typeof mbThCalendar === 'object') mbThCalendar.init({ target:'date-area',
        fetchHoliday:setHldyAdopt, fetchDisday:setDisdyAdopt,
        holidays:'holidaysFromServer', disdays:'disdaysFromServer' }); // 상영관 달력
    if (typeof mbCorpScoll === 'object') mbCorpScoll.init({ target:'main-menu' }); // 회사소개 상단 스크롤
    //if (typeof mbEvtMain === 'object') mbEvtMain.init({ target:'event-top-slide' }); // 이벤트 메인
    if (typeof mbSwiper === 'object') mbSwiper.init({
        subopts:[
            //{ term:5000, ease:'easeInOutCubic', direction:'h' },
            { term:3000, ease:'easeInOutCubic', direction:'h' }
            //{ term:4000, ease:'easeInOutCubic', direction:'v' }
        ]
    });
    //var rollMovie = new addOnMotion({ parent:'.movie-list-info', target:'.movie-score', top:0 });
    var toggleAir = new toggleOnOff({ target:'.onair-condition .btn-onair', title:{ on:'개봉작만 보기', off:'전체 영화 보기' }, identifier:'on' });

    if(MegaboxUtil.Common.isMobile()){
    	$(".go-mobile").show();
    }else{
    	$(".go-mobile").hide();
    }

};

//일자 셋팅 함수
var holidaysFromServer = [];
var disdaysFromServer = [];
function setHldyAdopt(date) {
    holidaysFromServer.push(date);
}
function setDisdyAdopt(date) {
    disdaysFromServer.push(date);
}


// 윈도우 팝업창 함수
function openPopup(_file, _name, w, h, l, t){
    var _w = window.innerWidth;
    var _h = window.innerHeight;
    var _left = l;
    var _top = t;

    window.open(_file,_name, 'width='+w+', height='+h+', left='+_left+', top='+_top+', status=no, toolbar=no, menubar=no, location=no, scrollbars=yes');
}

// m-scroll update
function mScrollUpdate() {
    $('.m-scroll').mCustomScrollbar('update');
    //if (typeof mbThCalendar === 'object') mbThCalendar.setUI();
}

$(function(){

    // datepicker -  jquery ui
    datepickerEvent = function datepicker() {

        var allPlayDates = [];
        allPlayDates.push("20190127".maskDate());
        allPlayDates.push("20190129".maskDate());
        allPlayDates.push("20190201".maskDate());
        allPlayDates.push("20190205".maskDate());
        allPlayDates.push("20190206".maskDate());
        allPlayDates.push("20190301".maskDate());
        allPlayDates.push("20190305".maskDate());

        $( ".datepicker" ).datepicker({
            tempHtmlShow : true, // 개발
            allPlayDateClassName:"meagBox-selected-day", // 개발
            allPlayDates : allPlayDates, // 개발
            showButtonPanel : true, // 개발
            showOn: "both", // 개발
            buttonText: "날짜 선택", // css 에서 배경 처리
        });

        $( ".date-calendar" ).datepicker({
            showOn: "both",
            buttonText: "날짜 선택", // css 에서 배경 처리
            dateFormat: 'yy.mm.dd',
            prevText: '이전 달',
            nextText: '다음 달',
            monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
            monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
            dayNm: ['일', '월', '화', '수', '목', '금', '토'],
            dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
            dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
            showMonthAfterYear: true,
            yearSuffix: '년'
        });
    }
    if( $('.datepicker').length > 0 || $('.date-calendar').length > 0 ) {
        datepickerEvent();
    }

    // jquery ui 툴팁 - 공통
    $jqTooltip = function jqToolTip(){
        $('.jq-tooltip').tooltip({
            track : false,
            position : {
                my : 'left center-27',
                at : 'right-22 center'
            },
            hide : false
        });

        $('div.ui-helper-hidden-accessible').remove();
    }
    $jqTooltip();


    // 스킵 활성화
    $('.skip a').on({
        focus : function(){
            $('.skip').addClass('on');
        },
        blur : function(){
            $('.skip').removeClass('on');
        }
    });

    // input file design
    $(document).on('change', '.add-file .input-file', function(){
        var file_name =  $(this).val();
        $(this).closest('.add-file').find('.text').text(file_name);
    });


    $('.tab-cont').prepend('<a href="" class="ir"></a>')

    $(document).on('click', '.tab-layer a', function(e){
        e.preventDefault();

        _hrefLeng = $($(this).attr('href')).length;
        $(this).closest('li').addClass('on').siblings('li').removeClass('on');

        if( _hrefLeng > 0 ){
            $($(this).attr('href')).closest('.tab-cont-wrap').find('.tab-cont').removeClass('on');
            $($(this).attr('href')).addClass('on');

            $($(this).attr('href')).find('.ir').text($(this).text()+' 탭 화면 입니다.');
        }
    });

    // tab block button 태그
    $(document).on('click','.tab-block button', function(){
        $(this).closest('li').addClass('on').siblings('li').removeClass('on');
    });

    // tab sorting
    $(document).on('click','.tab-sorting button', function(){
        $(this).addClass('on').siblings().removeClass('on');
    });

    // 공통 : pull down box
    $(document).on('click', '.box-pulldown .tit .btn-toggle', function(){
        $(this).closest('.box-pulldown').toggleClass('on');

        if( $(this).closest('.box-pulldown').hasClass('on') ){
            $(this).find('.ico-arr-toggle-down').text('내용닫기');
        }
        else {
            $(this).find('.ico-arr-toggle-down').text('내용보기');
        }
    });

    // 공통 - 툴팁 새로운 툴팁 - 열기
    $(document).on('click', '.tool-layer .btn-click', function(e){
        e.preventDefault();

        if( $(this).closest('.tool-layer').hasClass('on') ){
            $('.tool-layer').removeClass('on');
        }
        else {
            $('.tool-layer').removeClass('on');
            $(this).closest('.tool-layer').addClass('on');
        }
    });

    // 공통 - 툴팁 새로운 툴팁 - 닫기
    $(document).on('click', '.tool-layer .btn-close-tooltip', function(e){
        e.preventDefault();
        $(this).closest('.tool-layer').removeClass('on');
    });

	// 영화 상세 툴팁
	$m_tooltip = $('.m-tooltip-wrap');

	$m_tooltip.on({
		mouseenter : function(){
			$(this).find('.m-detail-tooltip').stop().fadeIn(200);
		},
		focus : function(){
			$(this).find('.m-detail-tooltip').stop().fadeIn(200);
		},
		mouseleave : function(){
			$(this).find('.m-detail-tooltip').stop().fadeOut(200);
		},
		focusout : function(){
			$(this).find('.m-detail-tooltip').stop().fadeOut(200);
		},
	});

    /* 레이어 팝업 신규 */
    var $layerIndex = 501;
    $('.modal-layer').prepend('<a href="" class="focus" >레이어로 포커스 이동 됨</a>')

    // 필요한 아이디값 받아서 띄우기
    $modal = function modalLayer(open_id){
        $id = open_id;

        $bgModal = '<div class="bg-modal"></div>';

        $('body').append($bgModal);

        // mbAlert 가 display none, block
        if( $(document).find('.alertStyle').is(':visible')  ){
            $('.bg-modal').animate({opacity: 0}, 0);
        }
        else {
            $('.bg-modal').animate({opacity: 1}, 0);
        }

        //$('.bg-modal').animate({opacity: 1}, 300);

        $('#' + $id).addClass('on');

        _w = $('#' + $id).find('.wrap').outerWidth();
        _h = $('#' + $id).find('.wrap').outerHeight();


        if( $('body').hasClass('body-iframe') ){
            $('#' + $id).find('.wrap').css({
                marginLeft : -(_w/2),
                marginTop : 0,
                top : 100
            });
        }
        else {
            $('#' + $id).find('.wrap').css({
                marginLeft : -(_w/2),
                marginTop : -(_h/2)
            });
        }


    }

    $(document).on('click', '.btn-modal-open', function(e){

    	//레이어팝업시 나의메가박스 세션체크
		if( $(this).prop('id') != 'loginPupupATag' &&
			$(this).prop('id') != 'moveLogin' ){
			if( !sessionAllow( {sessionAt:false} ) ) return
	    }

        if( $(this).hasClass('disabled') || $(this).hasClass('no-event') ){
            e.preventDefault();
        }
        else {
            e.preventDefault();
            $bgModal = '<div class="bg-modal"></div>';

            $(this).addClass('target');

            if( $(this).attr('href') ){
                targetId = $(this).attr('href').split('#')[1];
            }
            else {
                targetId = $(this).attr('data-layer');
            }
            $modal_href = $('#' + targetId);

            if ( $modal_href.length == 0 ){
                //alert('해당되는 레이어가 없습니다');
                return false;
            }


            $w = parseInt($(this).attr('w-data'));
            $h =  parseInt($(this).attr('h-data'));

            if( $('.bg-modal').length > 0 ){} // dim 처리 된 배경이 이미 있을 때
            else {// dim 이 아에 없을 때 처음 출력
                $('body').append($bgModal);

             // mbAlert 가 display none, block
                if( $(document).find('.alertStyle').is(':visible')  ){
                    $('.bg-modal').animate({opacity: 0}, 0);
                }
                else {
                    $('.bg-modal').animate({opacity: 1}, 0);
                }

                if( $('body').hasClass('body-iframe') ){}
                else {
                    $('body').addClass('no-scroll');
                }

            }

            // 레이어 안에서 레이어 띄울때 반투명 처리
            if( $('.modal-layer.on').length > 0 ){
				$('#layer_login_select').addClass('modal-login');
                $('.modal-layer.on:last').addClass('dim');
            }

			// modal-layer 로 로그인팝업 띄울떄 dim 처리되는 현상 제거
			if( $('.modal-layer').hasClass('modal-login') ){
				$('#layer_login_select').removeClass('dim');
			}

            // 현재 레이어 닫고 다른 레이어 열 때 // 웹 접근성때문에 주석처리
            if( $(this).hasClass('toggle') ){
                //$(this).closest('.modal-layer').removeClass('on');
            }

            $($modal_href).addClass('on').css('z-index', $layerIndex);
            $layerIndex++;

            if( $('body').hasClass('body-iframe') ){
                $($modal_href).find('.wrap').css({
                    width : $w + 'px',
                    height : $h + 'px',
                    marginLeft : -($w/2),
                    marginTop : 0,
                    top : 80
                });
            }
            else {
                $($modal_href).find('.wrap').css({
                    width : $w + 'px',
                    height : $h + 'px',
                    marginLeft : -($w/2),
                    marginTop : -($h/2)
                });
            }

            // 레이어에 버튼이 있고 없고에 따라 cont 영역 조절
            if( $($modal_href).find('.btn-group-fixed').length > 0 ){
                $($modal_href).find('.wrap .layer-con').css({
                    height : $h - 112 + 'px'
                });
            }
            else {
                $($modal_href).find('.wrap .layer-con').css({
                    height : $h - 45 + 'px'
                });
            }

            $($modal_href).find('.focus').focus(); // 레이어로 포커스 이동 : 접근성
        }
    });

    // 레이어 닫기
    $(document).on('click', '.btn-modal-close, .close-layer', function(){
        divObj = $(this).closest('.modal-layer');

        $('.btn-modal-open').each(function(){

            if( $(this).attr('href') == '#'+ divObj.attr('id') ){
                if( $(this).hasClass('target') ){
                    $(this).removeClass('target');

                    if( $(this).is(':hidden') ){
                        $(this).focus(); // layer id와 매칭되는 a 태그로 포커스 이동
                    }
                }

                $(this).closest('.modal-layer').removeClass('dim')
            }
            else if ( $(this).attr('data-layer') == divObj.attr('id') ) {
                if( $(this).hasClass('target') ){

                    $(this).removeClass('target');

                    if( $(this).is(':hidden') ){
                        $(this).focus(); // layer id와 매칭되는 a 태그로 포커스 이동
                    }

                }
            }
        });

        $(this).closest('.modal-layer').removeClass('on');

        if( $('.modal-layer.on').length > 0 ){
            $('.modal-layer.on:last').removeClass('dim');

        }
        else {
            $('.bg-modal').animate({opacity: 0}, 300, function(){
                $(this).remove();
            });

            if( $('body').hasClass('body-iframe') ){}
            else {
                $('body').removeClass('no-scroll');
            }

        }
    });


 /* 레이어 팝업 신규 */
    var $layerIndex = 501;
    $('.modal-layer2').prepend('<a href="" class="focus" >레이어로 포커스 이동 됨</a>')

    // 필요한 아이디값 받아서 띄우기
    $modal = function modalLayer(open_id){
        $id = open_id;

        $bgModal = '<div class="bg-modal"></div>';

        $('body').append($bgModal);

        // mbAlert 가 display none, block
        if( $(document).find('.alertStyle').is(':visible')  ){
            $('.bg-modal').animate({opacity: 0}, 0);
        }
        else {
            $('.bg-modal').animate({opacity: 1}, 0);
        }

        //$('.bg-modal').animate({opacity: 1}, 300);

        $('#' + $id).addClass('on');

        _w = $('#' + $id).find('.wrap').outerWidth();
        _h = $('#' + $id).find('.wrap').outerHeight();

        if( $('body').hasClass('body-iframe') ){
            $('#' + $id).find('.wrap').css({
                marginLeft : -(_w/2),
                marginTop : 0,
                top : 140
            });
        }
        else {
            $('#' + $id).find('.wrap').css({
                marginLeft : -(_w/2),
                marginTop : -(_h/2)
            });
        }


    }

    $(document).on('click', '.btn-modal-open2', function(e){

    	//레이어팝업시 나의메가박스 세션체크
		if( $(this).prop('id') != 'loginPupupATag' &&
			$(this).prop('id') != 'moveLogin' ){
			if( !sessionAllow( {sessionAt:false} ) ) return
	    }

    	//현재 메타태그 변수에 저장
    	saveCurrentMeta();

        if( $(this).hasClass('disabled') || $(this).hasClass('no-event') ){
            e.preventDefault();
        }
        else {
            e.preventDefault();
            $bgModal = '<div class="bg-modal2"></div>';
			$bgDim = '<div class="bg-modal-dim"></div>';

            $(this).addClass('target');

            if( $(this).attr('href') ){
                targetId = $(this).attr('href').split('#')[1];
            }
            else {
                targetId = $(this).attr('data-layer');
            }
            $modal_href = $('#' + targetId);

            if ( $modal_href.length == 0 ){
                //alert('해당되는 레이어가 없습니다');
                return false;
            }


            $w = parseInt($(this).attr('w-data'));
            $h =  parseInt($(this).attr('h-data'));

            if( $('.bg-modal2').length > 0 ){} // dim 처리 된 배경이 이미 있을 때
            else {// dim 이 아에 없을 때 처음 출력
                $('body').append($bgModal);
                $('.modal-layer2').append($bgDim);

             // mbAlert 가 display none, block
                if( $(document).find('.alertStyle').is(':visible')  ){
                    $('.bg-modal2').animate({opacity: 0}, 0);
                    $('.bg-modal-dim').animate({opacity: 0}, 0);
                }
                else {
                    $('.bg-modal2').animate({opacity: 1}, 0);
                    $('.bg-modal-dim').animate({opacity: 1}, 0);
                }

                if( $('body').hasClass('body-iframe') ){}
                else {
                    $('body').addClass('no-scroll');
                }

            }

            // 현재 레이어 닫고 다른 레이어 열 때 // 웹 접근성때문에 주석처리
            if( $(this).hasClass('toggle') ){
                //$(this).closest('.modal-layer').removeClass('on');
            }


            $($modal_href).addClass('on').css('z-index', $layerIndex);
            $layerIndex++;

            if( $('body').hasClass('body-iframe') ){
                $($modal_href).find('.wrap').css({
                    width : $w + 'px',
                    height : $h + '%',
                    marginLeft : -($w/2),
                    marginTop : 0,
                    marginBottom : 100,
                    top : 100
                });
            }
            else {
                $($modal_href).find('.wrap').css({
                    width : $w + 'px',
                    height : $h + '%',
                    marginLeft : -($w/2),
                    marginTop : 0,
                    marginBottom : 100,
                    top : 100
                });
            }

            $($modal_href).find('.focus').focus(); // 레이어로 포커스 이동 : 접근성


			$bgDimHeight = $('.modal-layer2 .wrap').outerHeight(true); //무비포스트 레이어팝업 높이값

			//무비포스트 레이어팝업 딤 클릭영역 높이값 부여
            if( $('body').hasClass('body-iframe') ){
                $($modal_href).find('.bg-modal-dim').css({
                    height : $bgDimHeight + 100
                });
            }
            else {
                $($modal_href).find('.bg-modal-dim').css({
                    height : $bgDimHeight + 100
                });
            }
        }
    });

    // 레이어 닫기
    $(document).on('click', '.btn-modal-close2, .close-layer2, .bg-modal-dim', function(){
        divObj = $(this).closest('.modal-layer');

		//URL 변경
		history.replaceState( null, null, preMetaFormat.metaTagUrl );

		//메타태그 설정
		settingMeta(preMetaFormat);

		$('#layer_post_detail .bg-modal-dim')[0].scrollIntoView(true);
        $('.btn-modal-open2').each(function(){

            if( $(this).attr('href') == '#'+ divObj.attr('id') ){
                if( $(this).hasClass('target') ){
                    $(this).focus(); // layer id와 매칭되는 a 태그로 포커스 이동
                    $(this).removeClass('target');
                }

                $(this).closest('.modal-layer2').removeClass('dim')
            }
            else if ( $(this).attr('data-layer') == divObj.attr('id') ) {
                if( $(this).hasClass('target') ){
                    $(this).focus(); // layer id와 매칭되는 a 태그로 포커스 이동
                    $(this).removeClass('target');
                }
            }
        });

        $(this).closest('.modal-layer2').removeClass('on');


        if( $('.modal-layer2.on').length > 0 ){}
        else {
            $('.bg-modal2').animate({opacity: 0}, 300, function(){
                $(this).remove();
            });
            $('.bg-modal-dim').animate({opacity: 0}, 300, function(){
                $(this).remove();
            });

            if( $('body').hasClass('body-iframe') ){}
            else {
                $('body').removeClass('no-scroll');
            }

        }
    });

	//영화상세 예고편/스틸컷 버튼클릭시 해당 컨텐츠이동
	/*
	$(document).on('click', '.movie-sorting span .btn', function(){
		 $(this).closest('.movie-sorting').find('.btn').removeClass('on');
		 $(this).addClass('on');
	});

	$(document).on('click', '.movie-sorting .preview', function(){
		$(this).closest('.inner-wrap').find('.stillcut-slide')[0].scrollIntoView();
	});

	$(document).on('click', '.movie-sorting .stillcut', function(){
		$(this).closest('.inner-wrap').find('.stair-slide')[0].scrollIntoView();
	});
	*/




/* ==========================================================================

    메인

========================================================================== */

    if( $('.main-page').length > 0 ){

        // 메인 - my movie 화면 크기에 따른 활성화
        function myMovieMain(){
            $window_w = $(window).width();

            if( $window_w < 1441 ){
                $('.my-movie-main').removeClass('on');
            }
            else {
                $('.my-movie-main').addClass('on');
            }
        }
        myMovieMain();

        $(window).resize(function(){
            myMovieMain();
        }).resize();

        // 메인 - my movie 클릭 이벤트
        $(document).on('click', '.my-movie-main .btn-util .btn-arr-my-movie', function(){
            $this = $(this);

            if( $this.hasClass('open') ) {
                $('.my-movie-main').addClass('on');
                //$('.my-movie-main .btn-util .btn-arr-my-movie.close').focus();
            }
            else {
                $('.my-movie-main').removeClass('on');
                //$('.my-movie-main .btn-util .btn-arr-my-movie.open').focus();
            }
        });

        // 메인 - 영화 section 이벤트
        $main_movie = $('.main-movie-list .movie-list-info');

        $main_movie.on({
            mouseenter : function(){
                $(this).find('.wrap').stop().fadeIn(200);
            },
            focus : function(){
                $(this).find('.wrap').stop().fadeIn(200);
            },
            mouseleave : function(){
                $(this).find('.wrap').stop().fadeOut(200);
            },
            focusout : function(){
                $(this).find('.wrap').stop().fadeOut(200);
            },
        });

        // 메인 - 영화 section 마우스 이미지 자동 움직이기
        $mouse_icon = $('.main-movie .moving-mouse .iconset');
        if( $mouse_icon.length > 0 ) {
            $mouse_move = function(){
                $mouse_icon.animate({ top : 10}, 500).delay(500).animate({top : 0}, 500, function(){$mouse_move()});
            }
            $mouse_move();
        }
    }


/* ==========================================================================

    header

========================================================================== */

    $header = $('#header');
    $gnb = $('#gnb');
    $depth1 = $('.gnb-depth1 > li');

    $gnb.find('.gnb-depth1 > li > a').on({

        mouseenter : function(){

            if( $(this).closest('li').find('.gnb-depth2').length > 0 ){

                $depth1.removeClass('on');
                $(this).parent('li').addClass('on');
                $gnb.addClass('on');

            }
            else {
                $gnb.find('li').removeClass('on');
                $gnb.removeClass('on');
            }



        },
        focus : function(){

            if( $(this).closest('li').find('.gnb-depth2').length > 0 ){

                $depth1.removeClass('on');
                $(this).parent('li').addClass('on');
                $gnb.addClass('on');

            }
            else {
                $gnb.find('li').removeClass('on');
                $gnb.removeClass('on');
            }
        }

    });

    $header.on({
        mouseleave : function(){
            $gnb.find('li').removeClass('on');
            $gnb.removeClass('on');
        },
        blur : function(){
            $gnb.find('li').removeClass('on');
            $gnb.removeClass('on');
        }
    });

    // 상단 광고 영역
    $top_add = $('.header-add-area');

    if( $top_add.length > 0 ) {
        $('.container').addClass('area-ad')
    }
    else {
        $('.container').removeClass('area-ad')
    }


    // header : 사이트맵, 검색, mymega 클릭시 레이어
    $(document).on('click','.link-area .header-open-layer',function(e){
        e.preventDefault();
        _layer = $(this).attr('href');

        $(this).addClass('target');

        if( $(this).hasClass('on') ){
            $(this).removeClass('on');
            $(this).removeClass('target');

            $(_layer).removeClass('on');
        }
        else {
            $(this).addClass('on').siblings('.header-open-layer').removeClass('on');
            $(this).addClass('target').siblings('.header-open-layer').removeClass('target');

            $('.header-layer').removeClass('on');
            $(_layer).addClass('on');
            $(_layer).find('a.link-acc').focus();
        }
    });

    // header : 사이트맵, 검색, mymega - 접근성
    $(document).on('click', '.header-layer a.link-acc', function(e){
        e.preventDefault();
    });

    // header : 사이트맵, 검색, mymega - 레이어 닫기
    $(document).on('click', '.header-layer .layer-close', function(e){
        e.preventDefault();

        $('.header-open-layer').each(function(){
            if( $(this).hasClass('target') ){
                $(this).focus();
                $('.header-layer').removeClass('on');
                $(this).removeClass('on');
                $(this).removeClass('target');
            }
        });
    });

    // header : 검색 레이어
    $(document).on('click load','.layer-header-search .tab-rank ul li .btn', function(){

        $(this).closest('li').addClass('on').siblings().removeClass('on');

        liNum = $(this).closest('li').index();

        var rankCont = $(".layer-header-search .wrap .rank-cont");
        var _src = $(rankCont).find(".list ol:eq(" + liNum + ") ").children(":first").find("a").data('imgsrc');
        var _txt = $(rankCont).find(".list ol:eq(" + liNum + ") ").children(":first").find("a").text();

        $(rankCont).find(".img img").attr('src',_src);
        $(rankCont).find(".img img").attr('alt',_txt);
        $(rankCont).find(".list ol").hide();
        $(rankCont).find(".list ol:eq(" + liNum + ")").show();

    });

    // header : 검색 레이어 - rank
    $(document).on('mouseenter','.layer-header-search .wrap .rank-cont .list li a', function(){
        _src = $(this).data('imgsrc');
        _txt = $(this).text();

        $('.layer-header-search .wrap .rank-cont .img img').attr('src',_src);
        $('.layer-header-search .wrap .rank-cont .img img').attr('alt',_txt);
    });

    // header 알림 레이어 열기
    $(document).on('click', '#header .util-area .right-link .after .notice', function(e){
        e.preventDefault();

        $('.layer-header-notice').toggleClass('on');
    });

    // header 알림 레이어 닫기
    $(document).on('click', '.layer-header-notice .btn-close-header-notice', function(e){
        e.preventDefault();

        $(this).closest('.layer-header-notice').removeClass('on');
    });

    //header - header 위의 광고영역 닫기
    $(document).on('click', '.header-add-area .btn-del', function(e){
        e.preventDefault();
        $(this).closest('.header-add-area').hide();
        $(this).closest('body').find('header').addClass('none-ad');

        // 베네피아 존재시
	  	if($('#benepiaBanner').length > 0){
	  		$('#header').attr('style','top:57px')
	  	}
    });



/* ==========================================================================

    footer

========================================================================== */

    // 극장찾기 레이어
    $(document).on('click','.btn-looking-theater',function(e){
        e.preventDefault();
        _layer = $(this).attr('href');

        if( $(this).hasClass('target') ){
            $(this).removeClass('target');
            $(_layer).removeClass('on');
        }
        else {
            $(this).addClass('target');
            $(_layer).addClass('on');
            $(_layer).find('a.link-acc').focus();
        }
    });
    // header : 사이트맵, 검색, mymega - 레이어 닫기
    $(document).on('click', '.layer-looking-theater .btn-footer-layer-close', function(e){
        e.preventDefault();

        $('.btn-looking-theater').each(function(){
            if( $(this).hasClass('target') ){
                $(this).focus();
                $(this).removeClass('target');
            }
        });

        $(this).closest('.layer-looking-theater').removeClass('on');
    });



/* ==========================================================================

    공통

========================================================================== */
    // 셀렉트 박스 디자인
    // bootstrap.js , bootstap-select.js 두개 동시 필요
    if( $('.selectpicker').length > 0 ){
        $('.selectpicker').selectpicker({
            dropdownAlignRight : 'auto',
            dropupAuto : true,
            size : 10 // 옵션값 출력 최대 갯수 . 숫자 이상은 스크롤 처리 됨
        });
    }

    // quick menu
    function checkOffset() {
        if($('.btn-go-top').offset().top + $('.btn-go-top').height() >= $('#footer').offset().top - 10) {
            $('.btn-go-top').css('position', 'absolute');
        }

        if($(document).scrollTop() + window.innerHeight < $('#footer').offset().top) {
            $('.btn-go-top').css('position', 'fixed'); // restore when you scroll up
        }
    }

    if( $('.quick-area').length > 0 ){
        $(document).on('scroll', function() {
            if( $(window).scrollTop() > 300 ){
                $('.quick-area').fadeIn(300);
            }
            else {
                $('.quick-area').fadeOut(300);
            }
            checkOffset();
        });
    }


    $(document).on('click', '.btn-go-top', function(e){
        e.preventDefault();
        $('html, body').animate({scrollTop : 0}, 300, 'easeInOutExpo');
    });

    // page-util 고정 시키기





    // 더보기 토글
    $(document).on('click', '.btn-more.toggle .btn', function(){
        $(this).closest('.btn-more').toggleClass('on');

        if( $(this).closest('.btn-more').hasClass('on') ) {
            $(this).find('span').text('닫기');
        }
        else {
            $(this).find('span').text('더보기');
        }

        if( $('.movie-summary').length > 0 ) {
            $(this).closest('.movie-summary').toggleClass('on');
        }
    });

    // 말풍선 - 토글
    $(document).on('click', '.post-funtion .btn-alert', function(e){
        e.preventDefault();
        $(this).closest('.post-funtion').find('.balloon-space').toggleClass('on');
    });

    // 말풍선 - 닫기
    $(document).on('click', '.balloon-space .btn-close a', function(e){
        e.preventDefault();
        $(this).closest('.balloon-space').removeClass('on');
        $(this).closest('.post-funtion').find('.btn-alert').focus();
    });

    // 한줄평 별점
    $(document).on('click', '.box-star-score .star .group .btn', function(){
        $(this).addClass('on');
        $(this).prev('.btn').addClass('on');
        $(this).next('.btn').removeClass('on');

        $(this).closest('.group').prevAll('.group').find('.btn').addClass('on');
        $(this).closest('.group').nextAll('.group').find('.btn').removeClass('on');
    });

    // 로케이션 영역의 sns 공유하기
    $(document).on('click', '.sns-share .btn-common-share', function(e){
        e.preventDefault();

        $(this).closest('.sns-share').find('.btn-sns-share-wrap').toggleClass('on');
    });

    // 로케이션 영역의 sns 닫기
    $(document).on('click', '.sns-share .btn-close-common-sns', function(e){
        e.preventDefault();
        $(this).closest('.btn-sns-share-wrap').removeClass('on');
    });

    $(document).on('scroll', function() {
        $('.sns-share .btn-sns-share-wrap').removeClass('on');
    });



/* ==========================================================================

    영화

========================================================================== */

    // 영화 - 목록
    $('.movie-list ol li').on({
        mouseenter : function(){
            $(this).find('.movie-score').finish().addClass('on').animate({opacity: 1}, 300);
        },
        mouseleave : function(){
            $(this).find('.movie-score').finish().animate({opacity: 0}, 300, function(){
                $(this).removeClass('on');
            });
        },
        focus : function(){
            $(this).find('.movie-score').finish().addClass('on').animate({opacity: 1}, 300);
        },
        blur : function(){
            $(this).find('.movie-score').finish().animate({opacity: 0}, 300, function(){
                $(this).removeClass('on');
            });
        }
    });

    // 영화 - 스틸컷의 이미지 상세보기
    $(document).on('click', '.stair-slide-list li a', function(e){
        e.preventDefault();
        $('body').addClass('no-scroll');
        $('.layer-stillcut-view').addClass('on');
    });

    $(document).on('click', '.view-content ul li a', function(e){
        e.preventDefault();
        $('body').removeClass('no-scroll');
        $('.layer-stillcut-view').removeClass('on');
    });

    $(document).on('click', '.layer-stillcut-view .btn-group .btn-close', function(e){
        e.preventDefault();
        $('body').removeClass('no-scroll');
        $('.layer-stillcut-view').removeClass('on');
    });

    // 영화 목록 마우스 오버 했을 때 나오는 보고싶어 부분 이벤트
    $(document).on('click','.movie-list-info .btn-see .btn', function(){
        $icon = $(this).find('.ico-heart-toggle').toggleClass('on');

        if( $icon.hasClass('on') ){
            $icon.attr('title', '보고싶어 설정 함');
        }
        else {
            $icon.attr('title', '보고싶어 설정 안함');
        }
    });

    // 한줄평 목록
    $(document).on('click', '.story-box .story-wrap .tit button', function(){
        $(this).closest('.story-box').find('.story-wrap').removeClass('on');
        $(this).closest('.story-wrap').addClass('on');

        $(this).closest('.story-wrap').find('.balloon-space').removeClass('on');

        if( $(this).closest('.story-wrap').hasClass('preview') ){
            $(this).closest('li').find('.story-date .preview').addClass('on');
            $(this).closest('li').find('.story-date .review').removeClass('on');
        }
        else {
            $(this).closest('li').find('.story-date .preview').removeClass('on');
            $(this).closest('li').find('.story-date .review').addClass('on');
        }
    });

    // 무비포스트 로그인 전 툴팁
    $(document).on('click', '.tooltip-click', function(e){
        e.preventDefault();
        _target = $(this).attr('href');
        $(_target).toggleClass('on');
    });

    $(document).on('click', '.btn-close-tooltip', function(e){
        e.preventDefault();
        $(this).closest('.tooltip-cont').removeClass('on');
    });

    // 로그인 안내 툴팁에서 로그인 레이어 띄울 때
    $(document).on('click', '.login-alert-tooltip a', function(e){
        e.preventDefault();

        $('.tooltip-layer').css('opacity', 0);
        $('.tooltip-layer').css('pointer-event', 'none');
        $('.tipPin').css('opacity',0);
    });

    // 무비 포스트 작성하기 상단 영화 목록
    $(document).on('click', '.select-post-list .select-post li a', function(e){
        e.preventDefault();

        if( $(this).hasClass('done') ){
            // 작성한 포스트는 이벤트 없음
        }
        else {

            $(this).toggleClass('on');

            $(this).closest('li').siblings().find('a').removeClass('on');
        }
    });

    // 공통 - 툴팁 새로운 툴팁 - 열기
    $(document).on('click', '.member-special-tool-layer .btn-click', function(e){
        e.preventDefault();

        if( $(this).closest('.member-special-tool-layer').hasClass('on') ){
            $('.member-special-tool-layer').removeClass('on');
        }
        else {
            $('.member-special-tool-layer').removeClass('on');
            $(this).closest('.member-special-tool-layer').addClass('on');
        }
    });

    // 공통 - 툴팁 새로운 툴팁 - 닫기
    $(document).on('click', '.member-special-tool-layer .btn-close-tooltip', function(e){
        e.preventDefault();
        $(this).closest('.member-special-tool-layer').removeClass('on');
    });

    /* 큐레이션 안내 - 레이어 */
    $(document).on('click', '.btn-member-special-tool', function(e){
        e.preventDefault();


        if( $($(this).attr('href')).hasClass('on') ){
            $('.member-special-tool-layer').removeClass('on');
        }
        else {
            $('.member-special-tool-layer').removeClass('on');
            $($(this).attr('href')).addClass('on');
        }

        //$($(this).attr('href')).toggleClass('on');
    });


    // 공통 - 툴팁 새로운 툴팁 - 닫기
    $(document).on('click', '.member-special-tool-layer .btn-close-tooltip', function(e){
        e.preventDefault();
        $(this).closest('.member-special-tool-layer').removeClass('on');
    });

    // 영화 상세 내용안의 sns 공유하기
   /* $(document).on('click', '.movie-detail-page .sns-share .btn-common-share', function(e){
        e.preventDefault();

        $(this).closest('.sns-share').find('.btn-sns-share-wrap').toggleClass('on');
    });*/




/* ==========================================================================

    예매

========================================================================== */
    // mcustomscroll
    $m_scroll = function(){
        $('.m-scroll').mCustomScrollbar({
            setWidth:false,
            setHeight:false,
            setTop:0,
            setLeft:0,
            axis:"y",
            scrollbarPosition:"inside",
            mouseWheelPixels : 200,
            scrollInertia: 800,
            autoDraggerLength:true,
            autoHideScrollbar:false,
            autoExpandScrollbar:false,
            alwaysShowScrollbar:1,
            snapAmount:null,
            snapOffset:0,
            mouseWheel:{
                enable:true,
                scrollAmount:"auto",
                axis:"y",
                preventDefault:true,
                deltaFactor:"auto",
                normalizeDelta:false,
                invert:false,
                disableOver:["select","option","keygen","datalist","textarea"]
            },
            scrollButtons:{
                enable:false,
                scrollType:"stepless",
                scrollAmount:"auto"
            },
            keyboard:{
                enable:true,
                scrollType:"stepless",
                scrollAmount:"auto"
            },
            contentTouchScroll:25,
            advanced:{
                autoExpandHorizontalScroll:false,
                //autoScrollOnFocus:"input,textarea,select,button,datalist,keygen,a[tabindex],area,object,[contenteditable='true']",
                autoScrollOnFocus:false,
                updateOnContentResize:true,
                updateOnImageLoad:true,
                updateOnSelectorChange:false,
                releaseDraggableSelectors:false
            },
            //theme:"light",
            callbacks:{
                onInit:false,
                onScrollStart:false,
                //onScroll:mbThCalendar.events.wheel.bind(this, $m_scroll),
                onTotalScroll:false,
                onTotalScrollBack:false,
                whileScrolling:false,
                onTotalScrollOffset:0,
                onTotalScrollBackOffset:0,
                alwaysTriggerOffsets:true,
                onOverflowY:false,
                onOverflowX:false,
                onOverflowYNone:false,
                onOverflowXNone:false
            },
            live:false,
            liveSelector:null
        });
    }

    if( $('.m-scroll').length > 0 ){
        $m_scroll();
    }

    // 예매 - 상영시간표 - 영화별, 극장별, 특별관 선택 레이어
    $('.ltab-layer-cont').prepend('<a href="" class="ir"></a>')

    $(document).on('click', '.movie-choice-area .tab-left-area a', function(e){
        e.preventDefault();

        $(this).closest('.tab-left-area').find('li').removeClass('on');
        $(this).parent().addClass('on');

        $(this).closest('.movie-choice-area').find('.ltab-layer-cont').removeClass('on');
        $($(this).attr('href')).addClass('on');

        $($(this).attr('href')).find('.ir').text($(this).text()+' 탭 화면 입니다.');
    });

    // 예매 - 상영시간표 - 영화별, 극장별, 특별관 안쪽의 상단 tab 레이어
    $('.tab-layer-cont').prepend('<a href="" class="ir"></a>')

    $(document).on('click', '.tab-list-choice a', function(e){
        e.preventDefault();

        $(this).closest('.tab-list-choice').find('a').removeClass('on');
        $(this).addClass('on');

        $(this).closest('.tab-area').find('.tab-layer-cont').removeClass('on');
        $($(this).attr('href')).addClass('on');

        $($(this).attr('href')).find('.ir').text($(this).text()+' 탭 화면 입니다.');
    });

    // 예매 - 빠른예매 - 영화, 영화관 tab 선택
    $(document).on('click', '.quick-reserve-area .list-area .btn-tab', function(){
        $(this).closest('.list-area').find('.btn-tab').removeClass('on');
        $(this).addClass('on');
        $(this).closest('.list-area').find('.list').hide();
        $(this).next('.list').show();

        //mScrollUpdate();
    });

    // 예매 - 빠른예매 - 영화 선택
    $(document).on('click', '.quick-reserve-area .movie-choice .list .btn', function(){
        //$(this).toggleClass('on'); // 개발에서 처리
    });

    // 예매 - 빠른예매 - 영화관 메인 지역 선택
    $(document).on('click', '.quick-reserve-area .theater-choice .list .btn', function(){
        $(this).closest('ul').find('.btn').removeClass('on');
        $(this).addClass('on');

        $(this).closest('ul').find('.depth').removeClass('on');
        $(this).next('.depth').addClass('on');
    });

    // 예매 - 빠른예매 - 영화관 서브 지역 선택
    $(document).on('click', '.quick-reserve-area .theater-choice .list .depth button', function(){
        //$(this).toggleClass('on'); // 개발에서 처리
    });

    // 예매 - 빠른예매 - 영화 시간 선택
    $(document).on('click', '.quick-reserve-area .movie-schedule-area .result .scroll ul li .btn', function(){
        $(this).closest('ul').find('.btn').removeClass('on');
        $(this).addClass('on');
    });

    // 예매 - 상영시간표
    $(document).on('click', '.time-table-page .movie-choice-area .wrap .list-section .scroll .list li .btn', function(e){
        e.preventDefault();
        $(this).closest('ul').find('.btn').removeClass('on');
        $(this).addClass('on');
    });

    /* 개발에서 이벤트 처리 완료
    // 예매 - 좌석선택 갯수 이벤트
    $(document).on('click', '.seat-select-section .seat-section .seat-area .seat-count .cell .count .number .now', function(){
        $(this).closest('.number').find('.num-choice').toggleClass('on');
    });

    $(document).on('click', '.seat-select-section .seat-section .seat-area .seat-count .cell .count .number .num-choice .btn', function(){
        //_num = $(this).text();
        // $(this).closest('.number').find('.now').text(_num);

        $(this).closest('ul').find('.btn').removeClass('on');
        $(this).addClass('on');

        $(this).closest('.num-choice').removeClass('on');
        $(this).closest('.number').find('.now').focus();
    });

    // 예매 - 좌석선택 마우스 오버, 포커스시 이벤트
    $(document).on('mouseenter focus','button.seat-condition', function(){
        if( !$(this).hasClass('finish') && !$(this).hasClass('impossible') ){
            $(this).addClass('on');
        }
    });

    $(document).on('mouseleave blur','button.seat-condition', function(){
        $(this).removeClass('on');
    });
    */
    /*// 개발에서 이벤트 처리 완료 */

    // 예매 - 좌석 선택, 경고창 없애기
    $(document).on('click', '.seat-select-section .seat-section .seat-area .seat-layout .alert .box-alert .btn-close-small', function(){

        if( $('.seat-select-section .seat-section .seat-area .seat-layout .alert .box-alert').length == 1 ){
            $(this).closest('.seat-area').removeClass('has-alert');
            $(this).closest('.box-alert').remove();
            $(this).closest('.alert').remove();
        }
        else {
            $(this).closest('.box-alert').remove();
        }
    });

    // 예매 - 영화 시간 선택 버튼
    $(document).on('click', '.seat-select-section .seat-result .wrap .info-area .other-time .now', function(){
        $(this).closest('.other-time').toggleClass('on');
    });

    // 빠른예매 - 관람권 및 할인적용 : 아코디언 (개발 에서 삭제) 2019-08-19 (재추가)
    //$(document).on('click', '.discout-setting .discout-list ul li .tit', function(e){
        //e.preventDefault();
        //$(this).closest('.discout-list').find('li').removeClass('on');
        //$(this).closest('li').addClass('on');
    //});

    // 빠른예매 - 관람권 및 할인적용 : 결제수단 선택
    $(document).on('click', '.select-payment button', function(){
        $(this).addClass('on').siblings('button').removeClass('on');
    });

    // 빠른예매 - 관람권 및 할인적용 : 카드사 선택
    /*$(document).on('click', '.select-payment button', function(e){
        if( $(this).hasClass('card') ){
            $('.select-payment-card').show();
        }
        else {
            $('.select-payment-card').hide();
        }
    });*/


/* ==========================================================================

    극장

========================================================================== */

    // 극장 상단 지역선택
    $('.theater-area-list > ul > li .depth1').on({
        mouseenter : function(){
            $('.theater-area-list > ul > li').removeClass('on');
            $(this).parent('li').addClass('on');
        },
        focus : function(){
            $('.theater-area-list > ul > li').removeClass('on');
            $(this).parent('li').addClass('on');
        }
    });

    $('.theater-area-list > ul').on({
        mouseleave : function(){
            $('.theater-area-list > ul > li').removeClass('on');
        },
        blur : function(){
            $('.theater-area-list > ul > li').removeClass('on');
        }
    });

    // 영화관 메인  - 지역별 영화관 리스트
    var _h1 = $('.user-theater').outerHeight();
    var _h2 = $('.theater-place').outerHeight();

    function theaterPlaceTab() {

        var _list = $('.theater-place > ul > li.on .theater-list');
        _h3 = _list.outerHeight();
        _hAll = _h1 + _h2 + _h3;

        $('.theater-box').outerHeight(_hAll)
    }
    theaterPlaceTab();

    /* 개발에서 이벤트 처리
    function selCity(){
        $(document).on('click', '.sel-city' , function(e){
            e.preventDefault();
            $(this).parent().addClass('on').siblings('li').removeClass('on');

            _h0 = $(this).parent().find('.theater-list').outerHeight();
            _hAll = _h0 + _h1 + _h2;

            $('.theater-box').outerHeight(_hAll);
        });
    }
    selCity();
    */



/* ==========================================================================

    스토어

========================================================================== */
    $(document).on('click', '.layer-goods-theater .area ul li .btn', function(){
        $(this).closest('li').addClass('on').siblings('li').removeClass('on');
    });



/* ==========================================================================

    고객센터

========================================================================== */
    if( $('.faq-list').length > 0 ){
        $('.faq-list ul li').first().find('.qut').addClass('on');

        $(document).on('click', '.faq-list ul li .qut a', function(e){
            e.preventDefault();

            if( $(this).closest('.qut').hasClass('on') ){
                $('.faq-list ul li .qut').removeClass('on');
            }
            else {
                $('.faq-list ul li .qut').removeClass('on');
                $(this).closest('li').find('.qut').addClass('on');
            }
        });
    }


/* ==========================================================================

    나의 메가박스

========================================================================== */

    // 나의 메가박스 - 개인정보 수정 - 폰번호 변경
    $(document).on('click', '.change-phone-num', function(){
        $(this).closest('td').find('.change-phone-num-area').toggleClass('on');
        $(this).toggleClass('on');

        if( $(this).hasClass('on') ){
            $(this).text('변경취소');
        }
        else {
            $(this).text('휴대폰번호 변경');
        }
    });

    // 나의 메가박스 - 개인정보 수정 - 폰번호 변경 취소
    $(document).on('click', '.change-cancel', function(){
        $(this).closest('.change-phone-num-area').removeClass('on');
    });

    // 나의 메가박스  - 기프트카드 - 잔액이전
    $(document).on('click', '.money-move .get-area .list ul li .card-choice', function(){
        $(this).addClass('on').closest('li').siblings('li').find('.card-choice').removeClass('on');
    });

    // 나의 메가박스 - 자주쓰는 할인수단
    $(document).on('click', '.often-discount .tit-area .btn', function(){
        $(this).closest('.often-discount').toggleClass('off');
    });



/* ==========================================================================

    로그인, 회원가입

========================================================================== */

    // 로그인 - 비회원로그인 - 비회원예매 개인정보 처리방침
    $(document).on('click', '.no-member-privacy-rule .btn-agree .button', function(){
        $(this).addClass('on').siblings('.button').removeClass('on');
    });





/* ==========================================================================

    회사소개

========================================================================== */

    // 연혁
    $(document).on('click', '.year-box a', function(e){
        e.preventDefault();
        _href = $($(this).attr('href'));

        $(this).closest('span').addClass('on').siblings().removeClass('on');
        _href.show().siblings('.history-list').hide();
    });

    /* 검색 input enter key 이벤트 */
    $(document).on("keydown", "#headerMovieName", function(e){
        var keycode = (e.keyCode ? e.keyCode : e.which);
        if(keycode == 13){
            fn_searchHeaderBoxOffice();
        }
    });

    //검색 버튼 클릭
    $(document).on("click", "#btnHeaderSearch", function(){
        fn_searchHeaderBoxOffice();
    });

    if( $(document).find('.movie-detail-page').length > 0 ) {
        $(document).find('.page-util').addClass('off');
    }
    else {
        common_scroll();
    }
}); // end Document ready

function common_scroll() {
  //  $(window).on('load', function(){

        //console.log($(document).find('.page-util'))

        if( $(document).find('.page-util').length > 0 ) {

            $header_h = $(document).find('#header').outerHeight();

            // tab-list.fixed 가 있을 때
            if( $(document).find('.tab-list.fixed').length > 0 ) {

                tab_top = $(document).find('.tab-list.fixed').offset().top;

                //console.log(tab_top)

                // 영화 상세 페이지 일때
                if( $(document).find('.movie-detail-page').length > 0 ) {

                    $(document).find('.page-util').addClass('off'); // 일단 로케이션 숨기기
                    $(document).find('.page-util .sns-share').hide();

                    btn_movie_reserve = $(document).find('.movie-detail-page div.reserve').offset().top;

                    // 영화 상세 내용 고정 시키기, 로케이션 보이고 고정시키기
                    $(window).on('scroll', function() {
                        if ($(window).scrollTop() > btn_movie_reserve - 64 ) {
                            $(document).find('.movie-detail-page').addClass('fixed');
                            $(document).find('#contents').addClass('movie-fixed');
                            $(document).find('.page-util').removeClass('off').addClass('fixed');
                        } else {
                            $(document).find('.movie-detail-page').removeClass('fixed');
                            $(document).find('#contents').removeClass('movie-fixed');
                            $(document).find('.page-util').addClass('off').removeClass('fixed');
                        };
                    });

                    // tab 고정 시키기
                    $(window).on('scroll', function() {

                        if ($(window).scrollTop() > tab_top - 135 ) {
                            $(document).find('.tab-list.fixed').addClass('movie');
                            $(document).find('#contents').addClass('tab-fixed-movie');
                        } else {
                            $(document).find('.tab-list.fixed').removeClass('movie');
                            $(document).find('#contents').removeClass('tab-fixed-movie');
                        }
                    });
                }
                /* 2019-07-19 극장 상세에서 스크를시 이벤트 삭제
                    else if ( $('.theater-detail-page').length > 0 ) {
                    $('.page-util .sns-share').hide();

                    $(window).on('scroll', function() {
                        if ($(window).scrollTop() > 411 ) {
                            $('.theater-detail-page').addClass('fixed');
                            $('#contents').addClass('theater-fixed');
                        } else {
                            $('.theater-detail-page').removeClass('fixed');
                            $('#contents').removeClass('theater-fixed');
                        };
                    });

                    // location 고정 시키기
                    $(window).on('scroll', function() {
                        if ($(window).scrollTop() > $header_h ) {
                            $('.page-util').addClass('fixed');
                            $('#contents').addClass('location-fixed');
                        } else {
                            $('.page-util').removeClass('fixed');
                            $('#contents').removeClass('location-fixed');
                        }
                    });

                    $(window).on('scroll', function() {
                        if ($(window).scrollTop() > tab_top - 192 ) {
                            $('.tab-list.fixed').addClass('theater');
                            $('#contents').addClass('tab-fixed-theater');
                        } else {
                            $('.tab-list.fixed').removeClass('theater');
                            //$('#contents').removeClass('tab-fixed-theater');
                        }
                    });
                }*/
                // 영화 상세 페이지가 아닐 때
                else {

                    // location 고정 시키기
                    $(window).on('scroll', function() {
                        if ($(window).scrollTop() > $header_h ) {
                            $(document).find('.page-util').addClass('fixed');
                            $(document).find('#contents').addClass('location-fixed');
                            $(document).find('.lnb-area').addClass('location-fixed');
                            $(document).find('#bokdMBooking').addClass('location-fixed');
                            $(document).find('#bokdMSeat').addClass('location-fixed');
                            $(document).find('#bokdMPayBooking').addClass('location-fixed');
                        } else {
                            $(document).find('.page-util').removeClass('fixed');
                            $(document).find('#contents').removeClass('location-fixed');
                            $(document).find('.lnb-area').removeClass('location-fixed');
                            $(document).find('#bokdMBooking').removeClass('location-fixed');
                            $(document).find('#bokdMSeat').removeClass('location-fixed');
                            $(document).find('#bokdMPayBooking').removeClass('location-fixed');
                        }
                    });

                    // tab 고정 시키기
                    $(window).on('scroll', function() {
                        if ($(window).scrollTop() > tab_top - 42 ) {
                            $(document).find('.tab-list.fixed').addClass('on');
                            $(document).find('#contents').addClass('tab-fixed');
                        } else {
                            $(document).find('.tab-list.fixed').removeClass('on');
                            $(document).find('#contents').removeClass('tab-fixed');
                        }
                    });
                }
            }
            // tab-list.fixed 가 없을 때
            else {
                // location 고정 시키기
                $(window).on('scroll', function() {
                    if ($(window).scrollTop() > $header_h ) {
                        $('.page-util').addClass('fixed');
                        $('#contents').addClass('location-fixed');
                        $('.lnb-area').addClass('location-fixed');
                    } else {
                        $('.page-util').removeClass('fixed');
                        $('#contents').removeClass('location-fixed');
                        $('.lnb-area').removeClass('location-fixed');
                    }
                });
            }
        }
  //  });
}
//common_scroll();

/**
 * 파일 다운로드
 * @param downLoadUrl
 * @returns
 */
function gfn_fileDown( downLoadUrl ){

	$.get(downLoadUrl, function(data) {
		window.location.assign(downLoadUrl);
	}).done(function() {
		//alert('두 번째 성공');
	}).fail(function(e) {
		//alert('접속 실패');
		gfn_alertMsgBox('파일이 존재하지 않습니다.');
	}).always(function() {
		//alert('완료');
	});

}

/**
 * input type='number' 의 maxlength 설정
 * @param e
 * @returns
 */
function gfn_numberMaxLength(e){
	if(e.value.length > e.maxLength){
		e.value = e.value.slice(0, e.maxLength);
	}
}