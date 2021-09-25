@extends('layout.app')
@section('content')
        <div class="log bg-container">
            <div class="row">
                <div class="col-lg-8 mx-auto">
                    <div class="input-section mt-4">
                        <h2>التدقيق</h2>
                        <p>يمكنك رؤية جميع التغييرات التي حصلت على مشروعك  </p>
                        <div class="table-responsive">


                            <table class="display" id="table_id">
                                <thead>
                                <tr>
                                    <th>التاريخ</th>
                                    <th>رقم المشروع</th>
                                    <th>التعديل</th>
                                    <th>ملاحظات</th>

                                </tr>
                                </thead>
                                <tbody>

                                @foreach($logs as $log)
                                <tr>
                                    <td>{{$log->created_at}}</td>
                                    <td>{{$log->project_id}}</td>
                                    <td>{{$log->event}}</td>
                                    <td colspan="2">{{$log->note}}</td>
                                </tr>
                                @endforeach


                                </tbody>
                            </table>

                        </div>



                    </div>
                </div>
            </div>
        </div>

@endsection

@push('js')
    <script>



        $(document).ready( function () {
            $('#table_id').DataTable({
                "pagingType": "simple",
                "language": {
                    "search": "بحث:",
                    "lengthMenu": "  عرض _MENU_في الصفحة الواحدة   ",
                    "info": "الصفحة  _PAGE_ من _PAGES_",
                    "zeroRecords": "نأسف ,لايوجد أي شىء",
                    "infoFiltered": "( تمت تصفيته من إجمالي _MAX_السجلات)"

                }

            });
        } );

    </script>
@endpush
