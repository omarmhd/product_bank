<script src="{{asset('asset')}}/js/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.js"></script>
<script>
    $(window).load(function() {
        $(".se-pre-con").css('opacity', '0.5').fadeOut();

    });
</script>
<script src="{{asset('asset')}}/js/bootstrap.bundle.min.js"></script>
<script src="{{asset('asset')}}/js/main.js"></script>
<script src="{{asset('asset')}}/js/responsive.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js" integrity="sha512-37T7leoNS06R80c8Ulq7cdCDU5MNQBwlYoy1TX/WUsLFC2eYNqtKlV0QjH7r8JpG/S0GUMZwebnVFLPd6SU5yg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="{{asset('asset')}}/js/messages_ar.js"></script>



<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.2/js/jquery.dataTables.js"></script>
<script>
    $(document).on('click','.like',function (){



        var id=$(this).data('id')
        var url="{{route('like',['id'=>':id'])}}"
        url= url.replace(':id',id);
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN':"{{ csrf_token() }}"
            }
        });
        $.ajax({
            type: 'POST',
            url: url,
            data:{_token:"{{ csrf_token() }}"},
            cache: false,
            contentType: false,
            processData: false,
            success: (data) => {
                if (data.status) {

                    $('.like-count').text(data.sum)
                    $(this).css({color: data.color})
                }



            },
        })

    });

</script>


@if(!session('user_id'))
<script>
    $(document).ready(function () {

        $('#login').modal({
            backdrop: 'static',
            keyboard: false
        });
        $('#login .close').css('display', 'none');

    })</script>

    @endif
