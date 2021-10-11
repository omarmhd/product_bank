
$('.btn-nav').on('click',function(){
    $('.aside-bar-menu').css("right", 0).css("opacity", 1);
    $('html,body').css('overflow-y','hidden');
    $('.side-overlay').fadeIn();
});
$('.side-overlay,.close-menu').on('click',function(){
    $('.side-overlay').fadeOut();
    $('html,body').css('overflow-y','');
    $('.aside-bar-menu').css("right", "-900px").css("opacity", 0);
});

$('.login,.rate').on('click', function () {
    // $('.container').addClass('bg-blur');
    $('html,body').css('overflow-y', 'hidden');
});

$('.fade,.close').on('click', function () {
    setTimeout(function () {
        if (!$('.fade').hasClass('show')) {
            $('.container').removeClass('bg-blur');
            $('html,body').css('overflow-y', '');
        }
    }, 300)
});
$(function () {
    $('.nubmer-of-clac').each(function(){
        var total = parseInt($(this).children('small').html(), 10);
        var goal = parseInt($(this).children('span').html(), 10);
        total = isNaN(total) ? 0 : total;
        goal = (isNaN(goal) || goal == 0) ? 1 : goal;
        var percentage_text = Math.round((total / goal) * 100);
        var percentage = Math.round((total / goal) * 24);
        var circles = $(this).siblings('.percentage').children('svg').children('#circles_group').children();
        var text = $(this).siblings('.percentage').children('svg').children('.text-svg');
        circles.removeClass('active-circle-svg');
        for (let index = 0; index < percentage; index++) {
            circles.eq(index).addClass('active-circle-svg');
        }
        text.html(percentage_text + '%');
    });
});

$(document).on('keyup', '.goal,.total', function () {

    if ($(this).attr('class') == 'goal') {
        var total = parseInt($(this).siblings('.total').val(), 10);
        var goal = parseInt($(this).val(), 10);
    } else {
        var total = parseInt($(this).val(), 10);
        var goal = parseInt($(this).siblings('.goal').val(), 10);
    }
    total = isNaN(total) ? 0 : total;
    goal = (isNaN(goal) || goal == 0) ? 1 : goal;
    var percentage_text = Math.round((total / goal) * 100);
    var percentage = Math.round((total / goal) * 24);
    var circles = $(this).parent().parent().children('.info').children('.percentage').children('svg').children('#circles_group').children();
    var text = $(this).parent().parent().children('.info').children('.percentage').children('svg').children('.text-svg');
    circles.removeClass('active-circle-svg');
    for (let index = 0; index < percentage; index++) {
        circles.eq(index).addClass('active-circle-svg');
    }
    text.html(percentage_text + '%');
});
var i=1

$('.btn-add').on('click', function () {


    clone = $(this).parent().siblings('.clone').clone();
    $cards = $(this).parent().siblings('.cards');


    clone.children("input").prop("disabled",false);
    clone.find('div').children("input").prop("disabled",false);

    clone.appendTo($cards);

    clone.fadeIn(500);
    clone.css('display', 'flex');
    clone.removeClass('d-none clone');

    //   console.log(clone);
});
$(document).on('click', '.remove', function () {
    $delete = $(this).parent().parent().parent().fadeOut(300, function () { $(this).remove(); });
    //    setTimeout
    //    $delete.delay(1000).remove();
});
$(document).on('click', '.new-remove', function () {
    $(this).parent().fadeOut(300, function () { $(this).remove(); });
});

$(document).on('click', '.edit', function () {

    $(this).parent().parent().parent().children('.title').fadeToggle(0);
    $(this).parent().parent().parent().children('.info').children('.nubmer-of').fadeToggle(0);
    $(this).parent().parent().parent().children('.main-custom-input').fadeIn(0, function () {
        $(this).toggleClass('d-none');
        $(this).css('display', 'flex');
        $text = $(this).children('.title-text').val();
        $word1 = $(this).children('.title-text').val().split(' ')[0];
        $word2 = $(this).children('.title-text').val().split(' ')[1];
        // $text1 = $word1+' '+$word2;
        $text1 =$(this).children('input[name=result]').val();;
        $total = $(this).children('.total').val();
        $(this).parent().children('.title').html($text);
        $(this).parent().children('.info').children('.nubmer-of').children('span').html($text1);
        $(this).parent().children('.info').children('.nubmer-of').children('small').html($total);
    })

});
$(document).on('click','.choose-file-btn',function(e){
    e.preventDefault();
    $(this).siblings('#file-upload').click();
    // $(this).siblings('#file-upload').change(function(){
    //     $(this).siblings('.choose-txt').text('تم اختيار الصورة');
    // });
});
$('#file-upload').change(function(e){
    $(this).siblings('.choose-txt').text('تم اختيار الصورة');
});
// $(document).on('click','.upload-file-btn',function(e){
//     e.preventDefault();
//     console.log('upload');
// });
$(document).on('click','.btn-custom-login',function(){
    location.href = 'edit_project.blade.php';
});
$(document).on("dragover",'.drag-drop-image', function(e) {
    e.preventDefault();
    e.stopPropagation();
    $(this).css('background-color','white');
 });
 $(document).on("dragleave",'.drag-drop-image', function(e) {
    e.preventDefault();
    e.stopPropagation();
    $(this).css('background-color','');
 });
 $(document).on("drop",'.drag-drop-image',function(e){
    e.preventDefault();
    e.stopPropagation();
    // console.log( e.originalEvent.dataTransfer.files);
    $('#file-upload')[0].files =  e.originalEvent.dataTransfer.files;
    $('#file-upload').change();
    $(this).css('background-color','');

 });
