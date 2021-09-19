@extends('layout.app')
@section('content')
        <div class="log bg-container">
            <div class="row">
                <div class="col-lg-8 mx-auto">
                    <div class="input-section mt-4">
                        <h2>التدقيق</h2>
                        <p>يمكنك رؤية جميع التغييرات التي حصلت على مشروعك  </p>
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <th>التاريخ</th>
                                    <th>رقم المشروع</th>
                                    <th>التعديل</th>
                                    <th>ملاحظات</th>
                                    <th>
                                        <div class="search">
                                            <input type="text" placeholder="بحث ...">
                                            <i class="fa fa-search" aria-hidden="true"></i>
                                        </div>
                                    </th>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>2020/02/25</td>
                                        <td>4</td>
                                        <td>تعديل عامل</td>
                                        <td colspan="2">زيادة عدد التحميلات</td>
                                    </tr>
                                    <tr>
                                        <td>2020/02/25</td>
                                        <td>3</td>
                                        <td>إضافة مرفق</td>
                                        <td colspan="2">رفع برنتيشن للمشروع</td>
                                    </tr>
                                    <tr>
                                        <td>2020/02/25</td>
                                        <td>2</td>
                                        <td>إضافة عامل</td>
                                        <td colspan="2">إضافة هدف العوائد المالية</td>
                                    </tr>
                                    <tr>
                                        <td>2020/02/25</td>
                                        <td>4</td>
                                        <td>تعديل وصف</td>
                                        <td colspan="2">تصحيح أخطأ املائية</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>
            </div>
        </div>

@endsection
