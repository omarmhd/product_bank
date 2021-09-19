@if (session('success'))

    <script>
        toastr.success('{!!session('success')!!}', 'نجاح!', {
            closeButton: true
        });

    </script>
@elseif(session('error'))

    <script>
        toastr.error('{!!session('error')!!}', 'خطأ!', {
            closeButton: true
        });

    </script>

@endif
