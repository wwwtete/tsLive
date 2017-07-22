(function($, doc) {
  $.init({
    statusBarBackground: '#1a2b41',
    swipeBack: false,
  });

  $.ready(function() {

    var browser = {
      versions: function() {
        var u = navigator.userAgent,
          app = navigator.appVersion;
        return { //移动终端浏览器版本信息
          trident: u.indexOf('Trident') > -1, //IE内核
          presto: u.indexOf('Presto') > -1, //opera内核
          webKit: u.indexOf('AppleWebKit') > -1, //苹果、谷歌内核
          gecko: u.indexOf('Gecko') > -1 && u.indexOf('KHTML') == -1, //火狐内核
          mobile: !!u.match(/AppleWebKit.*Mobile.*/) || !!u.match(/AppleWebKit/), //是否为移动终端
          ios: !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/), //ios终端
          android: u.indexOf('Android') > -1 || u.indexOf('Linux') > -1, //android终端或者uc浏览器
          iPhone: u.indexOf('iPhone') > -1 || u.indexOf('Mac') > -1, //是否为iPhone或者QQHD浏览器
          iPad: u.indexOf('iPad') > -1, //是否iPad
          webApp: u.indexOf('Safari') == -1 //是否web应该程序，没有头部与底部
        };
      }(),
      language: (navigator.browserLanguage || navigator.language).toLowerCase()
    }
    var ios = browser.versions.ios || browser.versions.iPhone || browser.versions.iPad;

    /*
    if ( ios ) {
        document.querySelector( '#download-button' ).innerHTML = '安装';
    }*/
    /*
    document.querySelector( '#download-button' ).setAttribute( 'href', ios ? 'itms-services://?action=download-manifest&url=' + encodeURIComponent('https://www.hxappdown.com/down/hongxing_v1.0.plist?' + new Date().getTime()) : 'http://bucket1-1253397906.cossh.myqcloud.com/tslv.apk' ); */
    // document.querySelector('#download-button').setAttribute('href', ios ? 'javascript:alert("IOS版本暂不支持下载");' : 'http://bucket1-1253397906.cossh.myqcloud.com/tslv.apk');
    // document.querySelector( '#qrcode' ).setAttribute( 'src', ios ? 'images/qrcode-ios.png' : 'images/qrcode-android.png' );

    /*
    mui.getJSON( '/app/appupdate.json?' + new Date().getTime(), {}, function ( data ) {
        document.querySelector( '#version' ).innerHTML = data.version;
    } ); */

    if (/micromessenger/.test(navigator.userAgent.toLowerCase())) {
      document.getElementById('mask').setAttribute('style', 'position:absolute;width:100%;height:100%;left:0px;top:0px;right:0px;bottom:0px;z-index:9;background:rgba(0,0,0,0.66);display:block;');
    }
  });
}(mui, document));
