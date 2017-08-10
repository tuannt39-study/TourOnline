<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="/">Trang chủ</a></li>
            <li><a href="#">Tour trong nước</a></li>
            <li class="active">Vinh - Con Cuông - Vườn Quốc Gia Pù Mát - Động Thiên Đường - Bà Nà - Hội An - Đà Nẵng</li>
        </ul>
        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40">
            <!-- BEGIN CONTENT -->
            <div class="col-md-12 col-sm-12">
                <div class="content-page">
                    <div class="row">
                        <!-- BEGIN LEFT SIDEBAR -->
                        <div class="col-md-7 col-sm-7 blog-item">
                            <div class="blog-item-img">
                                <!-- BEGIN CAROUSEL -->
                                <div class="front-carousel">
                                    <div id="myCarousel" class="carousel slide">
                                        <!-- Carousel items -->
                                        <div class="carousel-inner">
                                            <div class="item">
                                                <img src="<c:url value="/static/assets/frontend/pages/img/posts/img1.jpg"/>" alt=""/>
                                            </div>

                                            <div class="item active">
                                                <img src="<c:url value="/static/assets/frontend/pages/img/posts/img2.jpg"/>" alt=""/>
                                            </div>
                                        </div>
                                        <!-- Carousel nav -->
                                        <a class="carousel-control left" href="#myCarousel" data-slide="prev">
                                            <i class="fa fa-angle-left"></i>
                                        </a>
                                        <a class="carousel-control right" href="#myCarousel" data-slide="next">
                                            <i class="fa fa-angle-right"></i>
                                        </a>
                                    </div>
                                </div>
                                <!-- END CAROUSEL -->

                            </div>


                            <p>Hồng Kông từ lâu đã trở thành một điểm du lịch nổi tiếng thu hút hàng triệu lượt du khách mỗi năm. Tuy không có được những thắng cảnh thiên nhiên hùng vĩ, những bờ biển cát trắng trải dài nhưng Hồng Kông được xem là thiên đường mua sắm và còn rất nhiều điểm tham quan du lịch thu hút du khách quốc tế. Đến với Hồng Kông cùng Vietravel, Quý khách sẽ được dịp trải nghiệm cảm giác thích thú trước những tượng sáp tạc hình các nhân vật nổi tiếng thế giới như thật tại Bảo Tàng Sáp Madame Tussauds, tản bộ trên Đại Lộ Ngôi Sao ngắm nhìn thành phố rực rỡ ánh đèn về đêm, cầu may mắn và tài lộc tại Miếu Thần Tài hay cùng gia đình và người thân vui chơi thỏa thích tại Disneyland nổi tiếng với lâu đài công chúa, những buổi diễu hành đầy sắc màu và chiêm ngưỡng màn trình diễn pháo hoa độc đáo. Ngoài ra, hành trình còn đưa Quý khách đến tham quan Công Viên Hải Dương với hơn 400 loài sinh vật biển, thưởng thức những màn biểu diễn của những chú cá heo và hải cẩu đáng yêu…

                            </p>

                            <!-- TABS -->
                            <div class="col-md-17 tab-style-1">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a href="#tab-1" data-toggle="tab">Chương trình tour</a></li>
                                    <li><a href="#tab-2" data-toggle="tab">Chi tiết tour</a></li>
                                    <li><a href="#tab-3" data-toggle="tab">Lưu ý</a></li>
                                    <li><a href="#tab-4" data-toggle="tab">Thông tin & Liên hệ</a></li>
                                    <li><a href="#tab-4" data-toggle="tab">Ngày khác</a></li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane row fade in active" id="tab-1">
                                        <div class="col-md-3 col-sm-3">
                                            <a href="<c:url value="/static/assets/frontend/pages/img/photos/img7.jpg"/>" class="fancybox-button" title="Image Title" data-rel="fancybox-button">
                                                <img class="img-responsive" src="<c:url value="/static/assets/frontend/pages/img/photos/img7.jpg"/>" alt=""/>
                                            </a>
                                        </div>
                                        <div class="col-md-9 col-sm-9">
                                            <p class="margin-bottom-10">Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Cosby sweater eu banh mi, qui irure terry richardson ex squid Aliquip placeat salvia cillum iphone.</p>
                                            <p><a class="more" href="#">Read more <i class="icon-angle-right"></i></a></p>
                                        </div>
                                    </div>
                                    <div class="tab-pane row fade" id="tab-2">
                                        <div class="col-md-9 col-sm-9">
                                            <p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit. Keytar helvetica VHS salvia..</p>
                                        </div>
                                        <div class="col-md-3 col-sm-3">
                                            <a href="<c:url value="/static/assets/frontend/pages/img/photos/img10.jpg"/>" class="fancybox-button" title="Image Title" data-rel="fancybox-button">
                                                <img class="img-responsive" src="<c:url value="/static/assets/frontend/pages/img/photos/img10.jpg"/>" alt=""/>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="tab-3">
                                        <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.</p>
                                    </div>
                                    <div class="tab-pane fade" id="tab-4">
                                        <p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater. Lomo wolf viral, mustache readymade thundercats keffiyeh craft beer marfa ethical. Wolf salvia freegan, sartorial keffiyeh echo park vegan.</p>
                                    </div>
                                </div>
                            </div>
                            <!-- END TABS -->

                            <ul class="blog-info">
                                <li><i class="fa fa-user"></i> By admin</li>
                                <li><i class="fa fa-calendar"></i> 20/07/2017</li>
                                <li><i class="fa fa-comments"></i> 17</li>
                                <li><i class="fa fa-tags"></i> FF. T, UI Design</li>
                            </ul>


                            <div class="post-comment padding-top-40">
                                <h3>Bình luận</h3>
                                <form role="form">
                                    <div class="form-group">
                                        <label>Tên</label>
                                        <input class="form-control" type="text"/>
                                    </div>

                                    <div class="form-group">
                                        <label>Email <span class="color-red">*</span></label>
                                        <input class="form-control" type="text"/>
                                    </div>

                                    <div class="form-group">
                                        <label>Viết bình luận</label>
                                        <textarea class="form-control" rows="8"></textarea>
                                    </div>
                                    <p><button class="btn btn-primary" type="submit">Đăng</button></p>
                                </form>
                            </div>

                        </div>
                        <!-- END LEFT SIDEBAR -->
                        <div class="col-lg-5 col-md-12 col-sm-12 thongtinchung">
                            <div class="thongtin" >
                                <div class="row tour-info-right-frame1">
                                    <div class="col-xs-12">
                                        <div style="font-weight: bold; font-size: 16px; margin-bottom: 10px; line-height: 22px;">
                                            <h1 itemprop="name">Vinh - Con Cuông - Vườn Quốc Gia Pù Mát - Động Thiên Đường - Bà Nà - Hội An - Đà Nẵng</h1>
                                            <span itemprop="brand" style="display: none;">Vietravel</span>
                                        </div>
                                        <div>
                                            <div style="float:left;padding-top:5px;" data-tourid="7e0b7e36-bb4e-468f-8ba7-72503ccfa238" class="rateit" data-rateit-value="4.68" data-rateit-resetable="false"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row tour-info-right-frame2">
                                    <div class="col-xs-12">
                                        <div class="row" style="margin-bottom: 16px; margin-top: 15px">
                                            <div class="col-md-4 col-sm-4 col-xs-5"> <span class="glyphicon glyphicon-qrcode"> </span>  Mã tour</div>
                                            <div class="col-md-8 col-sm-8 col-xs-7">NNSGN4711-011-220717VN-G</div>
                                        </div>
                                        <div class="row" style="margin-bottom: 16px; margin-top: 15px">
                                            <div class="col-md-4 col-sm-4 col-xs-5"><span class="glyphicon glyphicon-plane"></span>Nơi khởi hành:</div>
                                            <div class="col-md-8 col-sm-8 col-xs-7"> Hà Nội</div>
                                        </div>
                                        <div class="row" style="margin-bottom: 31px; margin-top: 15px">
                                            <div class="col-md-4 col-sm-4 col-xs-5"> <span class="glyphicon glyphicon-dashboard"></span>Thời gian:</div>
                                            <div class="col-md-8 col-sm-8 col-xs-7">5 ngày</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="price-availability-block clearfix">
                                    <div class="price">
                                        <strong><span>$</span>47.00</strong>
                                        <em>$<span>62.00</span></em>
                                    </div>
                                    <a href="/"><button class="btn btn-primary" type="submit" style="margin-left: 30px;">Đặt tour</button></a>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="row lichtrinhtour mg-bot30">
                                <div class="col-xs-19">
                                    <div class="frame">
                                        <div class="text-center" style="text-transform: uppercase; color: #fc7700; font-size: 20px; font-weight: bold; margin-bottom: 30px;">
                                            <div style="margin-bottom: 10px">T&#243;m tắt chương tr&#236;nh tour</div>
                                        </div>
                                        <div>
                                            <div class="f-left" style="width: 100%">

                                                <div class="f-left" style="width: 95%; margin-top: -10px; padding-left: 15px; line-height: 22px; margin-bottom: 15px">
                                                    <span style="font-weight: bold;">Ng&#224;y 1:</span> TP. HỒ CH&#205; MINH - HỒNG K&#212;NG (Ăn tối)                                        </div>
                                            </div>
                                        </div>
                                        <div class="clear"></div>
                                        <div>
                                            <div class="f-left" style="width: 100%">

                                                <div class="f-left" style="width: 95%; margin-top: -10px; padding-left: 15px; line-height: 22px; margin-bottom: 15px">
                                                    <span style="font-weight: bold;">Ng&#224;y 2:</span> HỒNG K&#212;NG - DISNEYLAND    (Ăn s&#225;ng, ăn tối)                                        </div>
                                            </div>
                                        </div>
                                        <div class="clear"></div>
                                        <div>
                                            <div class="f-left" style="width: 100%">

                                                <div class="f-left" style="width: 95%; margin-top: -10px; padding-left: 15px; line-height: 22px; margin-bottom: 15px">
                                                    <span style="font-weight: bold;">Ng&#224;y 3:</span> HỒNG K&#212;NG - BẢO T&#192;NG S&#193;P - T&#210;A NH&#192; SKY 100       (Ăn ba bữa)                                        </div>
                                            </div>
                                        </div>
                                        <div class="clear"></div>
                                        <div>
                                            <div class="f-left" style="width: 100%">

                                                <div class="f-left" style="width: 95%; margin-top: -10px; padding-left: 15px; line-height: 22px; margin-bottom: 15px">
                                                    <span style="font-weight: bold;">Ng&#224;y 4:</span> HỒNG K&#212;NG - C&#212;NG VI&#202;N HẢI DƯƠNG  (Ăn s&#225;ng, ăn tối)                                        </div>
                                            </div>
                                        </div>
                                        <div class="clear"></div>
                                        <div>
                                            <div class="f-left" style="width: 100%">

                                                <div class="f-left" style="width: 95%; margin-top: -10px; padding-left: 15px; line-height: 22px; margin-bottom: 15px">

                                                    <span style="font-weight: bold;">Ng&#224;y 5:</span> HỒNG K&#212;NG - TP.HỒ CH&#205; MINH:                                                           (Ăn s&#225;ng, ăn trưa)                                        </div>
                                            </div>
                                        </div>
                                        <div class="clear"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="row dichvudikem mg-bot30">
                                <div class="col-xs-12">
                                    <div class="frame">
                                        <div class="text-center" style="text-transform: uppercase; color: #fc7700; font-size: 20px; font-weight: bold; margin-bottom: 30px;">
                                            Dịch vụ đi k&#232;m
                                        </div>
                                        <div>
                                            <div class="mg-bot10">
																				<span class="fa-stack fa-lg">
																					<i class="fa fa-circle fa-stack-2x cam"></i>
																					<i class="fa fa-umbrella fa-stack-1x fa-inverse"></i>
																				</span>
                                                <span style="margin-left: 10px">Bảo hiểm</span>
                                            </div>
                                            <div class="mg-bot10">
																				<span class="fa-stack fa-lg">
																					<i class="fa fa-circle fa-stack-2x cam"></i>
																					<i class="fa fa-cutlery fa-stack-1x fa-inverse"></i>
																				</span>
                                                <span style="margin-left: 10px">Bữa ăn theo chương tr&#236;nh</span>
                                            </div>
                                            <div class="mg-bot10">
																				<span class="fa-stack fa-lg">
																					<i class="fa fa-circle fa-stack-2x cam"></i>
																					<i class="fa fa-user fa-stack-1x fa-inverse"></i>
																				</span>
                                                <span style="margin-left: 10px">Hướng dẫn vi&#234;n</span>
                                            </div>
                                            <div class="mg-bot10">
																				<span class="fa-stack fa-lg">
																					<i class="fa fa-circle fa-stack-2x cam"></i>
																					<i class="fa fa-ticket fa-stack-1x fa-inverse"></i>
																				</span><span style="margin-left: 10px">V&#233; tham quan</span>
                                            </div>
                                            <div class="mg-bot10">
																				<span class="fa-stack fa-lg">
																					<i class="fa fa-circle fa-stack-2x cam"></i>
																					<i class="fa fa-car fa-stack-1x fa-inverse"></i>
																				</span>
                                                <span style="margin-left: 10px">Vận chuyển</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<script type="text/javascript">
    jQuery(document).ready(function() {
        Layout.init();
        Layout.initOWL();
        LayersliderInit.initLayerSlider();
        Layout.initImageZoom();
        Layout.initTouchspin();
        Layout.initTwitter();
    });
</script>