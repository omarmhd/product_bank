<style>
    .search form{

      display: flex;
      justify-content: center;
      align-items: center;

     }
     .search .btn-search{
          background: #1e1656;
          width: 30px;
          height: 30px;
          display: flex;
          justify-content: center;
          align-items: center;
          border-radius: 0;
            border: 1px solid transparent;
      }
      .search i{
              position: initial;
              color: #ffffff;
              transform: none;
              /* top: -1px; */
              /* left: -3px; */
        }

      header .nav-bar .items .left-side{
          align-items: center;
      }
      header .nav-bar .items .custom-btn-edit{
        padding-top: 2px;
      }
 </style>
<header>
    <div class="container">
        <div class="nav-bar">
            <div class="items">
                <a href="{{route('project.index')}}">بنك المنتجات</a>

                <div class="left-side">
                    <a href="{{route('project.create')}}" class="btn custom-btn-edit">مشروع جديد</a>


                    <div class="search">
                        <form action="{{route('project.search')}}" method="GET">

                        <input type="text" placeholder="بحث ..." name="search">
                     <button type="submit" class="btn btn-light btn-search"><i class="fa fa-search" aria-hidden="true"></i></button>
                        </form>
                    </div>

                    <div class="btn-group dropdown-custom">
                        <button class="btn btn-secondary btn-sm dropdown-toggle " type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                               <span>
                                <svg id="baseline-perm_identity-24px" xmlns="http://www.w3.org/2000/svg" width="32.718" height="32.718" viewBox="0 0 32.718 32.718">
                                    <path id="Path_381" data-name="Path 381" d="M14.906,6.59a2.863,2.863,0,1,1-2.863,2.863A2.862,2.862,0,0,1,14.906,6.59m0,12.269c4.049,0,8.316,1.99,8.316,2.863v1.5H6.59v-1.5c0-.872,4.267-2.863,8.316-2.863M14.906,4a5.453,5.453,0,1,0,5.453,5.453A5.451,5.451,0,0,0,14.906,4Zm0,12.269C11.266,16.269,4,18.1,4,21.722v4.09H25.812v-4.09C25.812,18.1,18.546,16.269,14.906,16.269Z" transform="translate(1.453 1.453)" fill="#fff"></path>
                                    <path id="Path_382" data-name="Path 382" d="M0,0H32.718V32.718H0Z" fill="none"></path>
                                  </svg>
                               </span>
                            محمد خان
                        </button>
                        <div class="dropdown-menu">
                            <a href="{{route('project.index')}}" class="dropdown-item">مشاريعي</a>
                            <a href="{{route('log')}}" class="dropdown-item">التدقيق</a>
                            <a href="#" class="dropdown-item">حسابي</a>
                        </div>
                    </div>
                    <!-- <a href="#" class="login" data-toggle="modal" data-target="#login">دخول</a> -->
                </div>
                <button class="btn-nav" type="button">
                    <i class="fa fa-bars" aria-hidden="true"></i>
                </button>
                <div class="aside-bar-menu">
                    <div class="close-menu"><i class="fa fa-times"></i></div>
                    <div class="search">
                        <form action="">
                        <input type="text" placeholder="بحث ...">
                       <button type="submit"> <i class="fa fa-search" aria-hidden="true"></i></button>
                        </form>
                    </div>
                    <a href="new-project.html" class="btn custom-btn-edit">مشروع جديد</a>
                    <div class="btn-group dropdown-custom">
                        <button class="btn btn-secondary btn-sm dropdown-toggle " type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                               <span>
                                <svg id="baseline-perm_identity-24px" xmlns="http://www.w3.org/2000/svg" width="32.718" height="32.718" viewBox="0 0 32.718 32.718">
                                    <path id="Path_381" data-name="Path 381" d="M14.906,6.59a2.863,2.863,0,1,1-2.863,2.863A2.862,2.862,0,0,1,14.906,6.59m0,12.269c4.049,0,8.316,1.99,8.316,2.863v1.5H6.59v-1.5c0-.872,4.267-2.863,8.316-2.863M14.906,4a5.453,5.453,0,1,0,5.453,5.453A5.451,5.451,0,0,0,14.906,4Zm0,12.269C11.266,16.269,4,18.1,4,21.722v4.09H25.812v-4.09C25.812,18.1,18.546,16.269,14.906,16.269Z" transform="translate(1.453 1.453)" fill="#fff"></path>
                                    <path id="Path_382" data-name="Path 382" d="M0,0H32.718V32.718H0Z" fill="none"></path>
                                  </svg>
                               </span>
                            محمد خان
                        </button>
                        <div class="dropdown-menu">
                            <a href="index.html" class="dropdown-item">مشاريعي</a>
                            <a href="log.html" class="dropdown-item">التدقيق</a>
                            <a href="#" class="dropdown-item">حسابي</a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</header>
