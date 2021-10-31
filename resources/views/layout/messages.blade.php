@if (session('success'))

    <script>

        Swal.fire({
            position: 'center',
            icon: 'success',
            title:"{{session('success')}}",
            showConfirmButton: false,
            timer: 2000
        })
    </script>
@elseif(session('error'))
    <script>

        Swal.fire({
            position: 'center',
            icon: 'error',
            title:"{{session('error')}}",
            showConfirmButton: false,
            timer: 2000
        })
    </script>

@endif
