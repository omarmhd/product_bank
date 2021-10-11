<div class="modal fade rate-modal" id="rate1" tabindex="-1" role="dialog" aria-labelledby="rateTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close text-right" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="javascript:void(0)" method="post" class="review-form">
                    @csrf
                    @method('put')

                <div class="row">

                    <div class="col-12">
                        <h3>التقييم الاولي</h3>
                    </div>


                    <div class="col-10 mx-auto">
                        <div class="custom-checkbox text-left">
                            <input type="checkbox" id="first" {{in_array('1', $project->initial_evaluation)?"checked":""}}   name="initial_evaluation[]" value="1">
                            <span class="checkmark"></span>
                            <label for="first">تم تحقيق أكثر من 50% من المستهدفات</label>
                        </div>
                        <div class="custom-checkbox text-left">
                            <input type="checkbox" id="s" {{in_array('2', $project->initial_evaluation)?"checked":""}}    name="initial_evaluation[]" value="2">
                            <span class="checkmark"></span>
                            <label for="s">تم تحديث المشروع و مرفقاته بشكل دوري</label>
                        </div>
                        <div class="custom-checkbox text-left">
                            <input type="checkbox" id="th" {{in_array('3', $project->initial_evaluation)?"checked":""}}   name="initial_evaluation[]"  value="3">
                            <span class="checkmark"></span>
                            <label for="th">تم تحديث البزنس مودل ليتلاءم مع الواقع </label>
                        </div>
                        <div class="custom-checkbox text-left">
                            <input type="checkbox" id="fr" {{in_array('4', $project->initial_evaluation)?"checked":""}}  name="initial_evaluation[]" value="4" >
                            <span class="checkmark"></span>
                            <label for="fr">تم تحقيق أكثر من 40% من العوائد المتوقعةة </label>
                        </div>
                        <div class="custom-checkbox text-left">
                            <input type="checkbox" id="fi" {{in_array('5', $project->initial_evaluation)?"checked":""}}  name="initial_evaluation[]" value="5">
                            <span class="checkmark"></span>
                            <label for="fi">تم تحقيق أكثر من 30% من عدد العمليات المتوقعة</label>
                        </div>
                    </div>
                    <div class="col-10  mx-auto">
                        <input type="submit" class="btn  send-btn" style="background: #90268F">
                    </div>
                </div>
                </form>
            </div>

        </div>
    </div>
</div>
<!-- Modal login -->


<div class="modal fade rate-modal" id="rate2" tabindex="-1" role="dialog" aria-labelledby="rateTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close text-right" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="javascript:void(0)" method="post" class="review-form">
                    @csrf
                    @method('put')

                    <div class="row">

                        <div class="col-12">
                            <h3>التقييم الاولي</h3>
                        </div>


                        <div class="col-10 mx-auto">
                            <div class="custom-checkbox text-left">
                                <input type="checkbox" id="first"  {{in_array('1', $project->final_evaluation)?"checked":""}}  name="final_evaluation[]" value="1">
                                <span class="checkmark"></span>
                                <label for="first">تم تحقيق اكثر من نصف العوائد المتوقعة</label>
                            </div>
                            <div class="custom-checkbox text-left">
                                <input type="checkbox" id="s" {{in_array('2', $project->final_evaluation)?"checked":""}}   name="final_evaluation[]" value="2">
                                <span class="checkmark"></span>
                                <label for="s">يتم تحديث المشروع و مرفقاته بشكل دوري</label>
                            </div>
                            <div class="custom-checkbox text-left">
                                <input type="checkbox" id="th" {{in_array('3', $project->final_evaluation)?"checked":""}}   name="final_evaluation[]"  value="3">
                                <span class="checkmark"></span>
                                <label for="th">تم تحقيق اكثر من نصف عدد التحميلات المتوقع </label>
                            </div>
                            <div class="custom-checkbox text-left">
                                <input type="checkbox" id="fr" {{in_array('4', $project->final_evaluation)?"checked":""}}  name="final_evaluation[]" value="4" >
                                <span class="checkmark"></span>
                                <label for="fr">تم زيارة الموقع اكثر من 2500 مرة </label>
                            </div>
                            <div class="custom-checkbox text-left">
                                <input type="checkbox" id="fi" {{in_array('5', $project->final_evaluation)?"checked":""}}  name="final_evaluation[]" value="5">
                                <span class="checkmark"></span>
                                <label for="fi">وصول عدد المستخدمين النشطين الي 1000 عميل</label>
                            </div>
                        </div>
                        <div class="col-10  mx-auto">
                            <input type="submit" class="btn  send-btn" style="background: #90268F">
                        </div>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>

