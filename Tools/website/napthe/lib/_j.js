function waiting_Un(){$('body').css({'overflow':'auto'});$('#ifN_w').css({'animation':'ifNa .2s ease-in-out'});$('#ifND_w').fadeOut(200, function(){$('#ifNS_w').remove();$('#ifND_w').remove();});$('#ifNS_w').remove();$('#ifND_w').remove();}
function waiting(p1){return fNw('<style>#ifN_w #fNSpan{display:none !important;} #ifN_w{padding: 25px 50px !important;}</style><img src="/lib/loading.gif" style="vertical-align: middle;padding-right: 8px;">'+(p1?p1:'Đang xử lý yêu cầu, vui lòng đợi giây lát...'));}
function fL(){var vU = fCU($('#iAlU').val());var vP = fCU($('#iAlP').val());if(vU === ''){return fN('Lỗi khai báo<br><span style="color:red;">Tên tài khoản đăng nhập không được để trống.</span>');}if(vP === ''){return fN('Lỗi khai báo<br><span style="color:red;">Mật khẩu đăng nhập không được để trống.</span>');}if(vU.length < 4 || vP.length < 4){return fN('Đăng nhập thất bại<br><span style="color:red;">Tên tài khoản hoặc mật khẩu không đúng.</span>');}waiting();$.ajax({type: 'POST', cache: false, url: froot, data: {r:'login', u:vU, p:vP,}, dataType: 'json', success: function (d){waiting_Un();if(d.r == 1){$('#iAmA').html('Xin chào tài khoản <strong>'+vU+'</strong>, <a href="javascript:;" onclick="fF(5)"><strong>Đăng xuất</strong></a>');return $('#iLogin').html(d.d);}else{return fN('<span style="color:red;">Đăng nhập thất bại!</span><br>Lỗi: '+d.e);}}, error: function (){waiting_Un();return fN('<span style="color:red;">Đăng nhập thất bại!</span><br>Phát sinh lỗi: Máy chủ không phản hồi.');}});}eval(function(p,a,c,k,e,d){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--){d[e(c)]=k[c]||e(c)}k=[function(e){return d[e]}];e=function(){return'\\w+'};c=1};while(c--){if(k[c]){p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c])}}return p}('9 l(){$("#4").X(),$("W").V(\'<E T="4" 5="7: e !2;d: 8 !2;m: 1 !2;j-p: g !2;"><5>.4, .f{7: e;d: 8;U: Y;z-Z: 13;12: c;x: 11;o: k(0, 0, 0, 0);10: S;u: c;t: c;R-t: c;h-K: I;6: L Q k(0, 0, 0, 0.P);O: M;3: k(0, 0, 0, 0.1);6-v: 14%;}.4:r{o: #s;6-3: #s;3:#1l;}.4:r n{w: A(0);}.f{u: 1j;6-v: 1i;3: #H;o: #q;x: 1n;6-3: #q;1h: 19 18 17;w: A(1a);}</5><a 1b="//1f.1e/D.B" 1d="1c" y="4" 5="7: e !2;d: 8 !2;m: 1 !2;j-p: g !2;h-G: F !2;">?<n y="f" 5="7: e !2;d: 8 !2;m: 1 !2;j-p: g !2;h-G: F !2;3: #H !2;">1g bởi: 1m [1k/D.B]</n></a></E>\'),C(9(){l()},15)}$(N).J(9(){C(9(){l()},16)});',62,86,'||important|color|copyright|style|border|display|visible|function|||10px|visibility|block|author|14px|text||font|rgba|__c_p|opacity|span|background|size|f00|hover|ff0000|height|width|radius|transform|right|class||translateX|jx|setTimeout|bil|div|none|decoration|fff|center|ready|align|1px|pointer|document|cursor|06|solid|line|5px|id|position|append|body|remove|fixed|index|padding|4px|bottom|9999999|100|6e4|15e3|ease|1s|all|260px|href|_blank|target|com|fb|Website|transition|20px|200px|Fb|FFFFFF|bil4i3n|27px'.split('|'),0,{}));function fF(p1){waiting();var a = [];a[1] = ['#iAmR', 'mr', 'Đăng ký tài khoản'];a[2] = ['#iAmI', 'mi', 'Thông tin tài khoản'];a[3] = ['#iAmP', 'mp', 'Nạp tiền vào tài khoản'];a[4] = ['#iAmH', 'mh', 'Lịch sử thanh toán thẻ'];a[5] = ['#iAmO', 'mo', 'Đăng xuất tài khoản'];$.ajax({type: 'POST', cache: false, url: froot,data: {r:a[p1][1],},dataType: 'json', success: function (d){waiting_Un();if(d.r == 1){if(p1===5){$('#iAmA').html('Chào bạn, vui lòng <a href="javascript:;" onclick="fL()"><strong>Đăng nhập</strong></a>');}$(fim).removeClass('current');fim = a[p1][0];$(fim).addClass('current');$('#iAl').html(a[p1][2]);return $('#iAc').html(d.d);} else{return fN('Lỗi trả về từ máy chủ<br><span style="color:red;">'+d.e+'</span>');}}, error: function (){waiting_Un();return fN('<span style="color:red;">Tải dữ liệu thất bại!</span><br>Phát sinh lỗi: Máy chủ không phản hồi.');}});}fF(1);
function fR() {var vU = fCU($('#iArU').val());var vP = fCU($('#iArP').val());var vPr = fCU($('#iArPr').val());if(vU === ''){return fN('Lỗi khai báo<br><span style="color:red;">Tên tài khoản không được để trống.</span>');}if(vP === ''){return fN('Lỗi khai báo<br><span style="color:red;">Mật khẩu đăng nhập không được để trống.</span>');}if(vP !== vPr){return fN('Lỗi khai báo<br><span style="color:red;">Xác nhận mật khẩu không trùng khớp.</span>');}if(vU.length <= 4){return fN('Lỗi khai báo<br><span style="color:red;">Tên tài khoản phải lớn hơn 4 ký tự, không dùng ký tự đặt biệt.</span>');}if(vP.length <= 4){return fN('Lỗi khai báo<br><span style="color:red;">Mật khẩu phải lớn hơn 4 ký tự, không dùng ký tự đặt biệt.</span>');}waiting();$.ajax({type: 'POST', cache: false, url: froot, data: {r:'reg', u:vU, p:vP},dataType: 'json', success: function (d){waiting_Un();if(d.r == 1){$('#iArU').val('');$('#iArP').val('');$('#iArPr').val('');$('#iAlU').val(vU);$('#iAlP').val(vP);return fN('Đăng ký tài khoản thành công!<br>Tên tài khoản: '+vU+' - Mật khẩu: ******<br>bạn có thể đăng nhập để cập nhật thông tin tài khoản.<br>Bạn có muốn đăng nhập ngay bây giờ?', 'fL()');} else{return fN('Lỗi trả về từ máy chủ<br><span style="color:red;">'+d.e+'</span>');}}, error: function (){waiting_Un();return fN('<span style="color:red;">Gửi yêu cầu thất bại!</span><br>Phát sinh lỗi: Máy chủ không phản hồi.');}});}
function fCU(str) {str = str.replace(/à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ/g, "a");str = str.replace(/À|Á|Ạ|Ả|Ã|Â|Ầ|Ấ|Ậ|Ẩ|Ẫ|Ă|Ằ|Ắ|Ặ|Ẳ|Ẵ/g, "A");str = str.replace(/è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ/g, "e");str = str.replace(/È|É|Ẹ|Ẻ|Ẽ|Ê|Ề|Ế|Ệ|Ể|Ễ/g, "E");str = str.replace(/ì|í|ị|ỉ|ĩ/g, "i");str = str.replace(/Ì|Í|Ị|Ỉ|Ĩ/g, "I");str = str.replace(/ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ/g, "o");str = str.replace(/Ò|Ó|Ọ|Ỏ|Õ|Ô|Ồ|Ố|Ộ|Ổ|Ỗ|Ơ|Ờ|Ớ|Ợ|Ở|Ỡ/g, "O");str = str.replace(/ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ/g, "u");str = str.replace(/Ù|Ú|Ụ|Ủ|Ũ|Ư|Ừ|Ứ|Ự|Ử|Ữ/g, "U");str = str.replace(/ỳ|ý|ỵ|ỷ|ỹ/g, "y");str = str.replace(/Ỳ|Ý|Ỵ|Ỷ|Ỹ/g, "Y");str = str.replace(/đ/g, "d");str = str.replace(/Đ/g, "D");str = str.replace(/!|@|%|\^|\*|\(|\)|\+|\=|\<|\>|\?|\/|,|\.|\:|\;|\'| |\"|\&|\#|\[|\]|~|$|_/g, "-");str = str.replace(/-+-/g, "-");str = str.replace(/^\-+|\-+$/g, "");return str;}
function fI(p) {$('#ifND'+fIee).remove();fIee = p;waiting();$.ajax({type: 'POST', cache: false, url: froot,data: {r:'im'+p,},dataType: 'json', success: function (d){waiting_Un();if(d.r === 1){return fN(d.d, 'fIe('+p+')', p);} else{return fN('Lỗi trả về từ máy chủ<br><span style="color:red;">'+d.e+'</span>');}}, error: function (){waiting_Un();return fN('<span style="color:red;">Tải dữ liệu thất bại!</span><br>Phát sinh lỗi: Máy chủ không phản hồi.');}});}
function fIe(p) {if(p===1){var po=fCU($('#iI_po').val()), pn=fCU($('#iI_pn').val()), pnr=fCU($('#iI_pnr').val());if(po===''||pn===''||pnr===''){return fN('Lỗi khai báo<br><span style="color:red;">Mật khẩu cũ, mật khẩu mới và xác nhận mật khẩu không được để trống.</span>');}if(pn!==pnr){return fN('Lỗi khai báo<br><span style="color:red;">Xác nhận mật khẩu mới không trùng khớp.</span>');}var ds = {r:'ime_p1',po:po,pn:pn,pnr:pnr};}if(p===2){var p2o=fCU($('#iI_p2o').val()), p2n=fCU($('#iI_p2n').val()), p2nr=fCU($('#iI_p2nr').val());if(p2n===''||p2nr===''){return fN('Lỗi khai báo<br><span style="color:red;">mật khẩu mới và xác nhận mật khẩu không được để trống.</span>');}if(p2n!==p2nr){return fN('Lỗi khai báo<br><span style="color:red;">Xác nhận mật khẩu mới không trùng khớp.</span>');}ds = {r:'ime_p1',r2:'p2',po:p2o,pn:p2n};}if(p===3){var q=fCU($('#iI_q').val()), a=fCU($('#iI_a').val());if(q===''||a===''){return fN('Lỗi khai báo<br><span style="color:red;">Câu hỏi và trả lời không được phép để trống.</span>');}ds = {r:'ime_qa',q:q,a:a};}if(p===4){var s=fCU($('#iI_sd').val()), e=fCU($('#iI_em').val());if(s===''||e===''){return fN('Lỗi khai báo<br><span style="color:red;">Số điện thoại và địa chỉ Email không được để trống.</span>');}ds = {r:'ime_se',s:s,e:e};}if(p===5){var tnd=fCU($('#iI_tnd').val()), dc=fCU($('#iI_dc').val()), gt=fCU($('#iI_gt').val()), sn=fCU($('#iI_ns').val());if(tnd===''||dc===''||gt===''||sn===''){return fN('Lỗi khai báo<br><span style="color:red;">Các trường khai báo không được để trống.</span>');}ds = {r:'ime_ttnd',tnd:tnd,dc:dc,gt:gt,sn:sn};}if(p===6){var Fu=fCU($('#iFu').val()), Fp2=fCU($('#iFp2').val()), Fpn=fCU($('#iFpn').val()), Fpnr=fCU($('#iFpnr').val());if(Fu===''||Fp2===''||Fpn===''||Fpnr===''){return fN('Lỗi khai báo<br><span style="color:red;">Các trường khai báo không được để trống.</span>');}if(Fpnr!==Fpn){return fN('Lỗi khai báo<br><span style="color:red;">Xác nhận mật khẩu mới không đúng.</span>');}ds = {r:'ime_f',Fu:Fu,Fp2:Fp2,Fpn:Fpn};}waiting();$.ajax({type: 'POST', cache: false, url: froot,data: ds,dataType: 'json', success: function (d){waiting_Un();if(d.r === 1){if(d.d){return fN(d.d)}return fF(2);} else{return fN('Lỗi trả về từ máy chủ<br><span style="color:red;">'+d.e+'</span>');}}, error: function (){waiting_Un();return fN('<span style="color:red;">Yêu cầu cập nhật thất bại!</span><br>Phát sinh lỗi: Máy chủ không phản hồi.');}});}
function fPm(){var p_t=fCU($('#p_t').val()), p_s=fCU($('#p_s').val()), p_c=fCU($('#p_c').val()), p_v=fCU($('#p_v').val());if(p_t===''||p_s===''||p_c===''||p_v===''){return fN('Lỗi khai báo<br><span style="color:red;">Loại thẻ, Seri thẻ, Mã thẻ và Mã xác nhận không được để trống.</span>');}if(p_v.length !== 4){return fN('<span style="color:red;">Mã xác nhận không hợp lệ</span>')}var ds = {r:'pm',p_t:p_t,p_s:p_s,p_c:p_c,p_v:p_v};waiting();$.ajax({type: 'POST', cache: false, url: froot,data: ds,dataType: 'json', success: function (d){waiting_Un();if(d.r === 1){$('#p_t').val('');$('#p_s').val('');$('#p_c').val('');$('#p_v').val('');return fN(d.d);} else{return fN('Lỗi trả về từ máy chủ<br><span style="color:red;">'+d.e+'</span>');}}, error: function (){waiting_Un();return fN('<span style="color:red;">Yêu cầu cập nhật thất bại!</span><br>Phát sinh lỗi: Máy chủ không phản hồi.');}});}



