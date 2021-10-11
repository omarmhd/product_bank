@if (session('success'))

    <script>

        Swal.fire({
            position: 'center',
            icon: 'success',
            title:'ss',
            showConfirmButton: false,
            timer: 2000
        })
    </script>
@elseif(session('error'))

    <script>
        toastr.error('{!!session('error')!!}', 'خطأ!', {
            closeButton: true
        });

    </script>

@endif
