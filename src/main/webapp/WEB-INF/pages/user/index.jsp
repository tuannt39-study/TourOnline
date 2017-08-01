<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
        <div class="main">
          <div class="container">
            <!-- BEGIN SALE PRODUCT & NEW ARRIVALS -->
            <div class="row margin-bottom-40">
              <!-- BEGIN SALE PRODUCT -->
              <hr />
              <h2 align="center">TOUR TRONG NƯỚC YÊU THÍCH</h2>
              <hr />
              <!-- END SALE PRODUCT -->
              <!-- BEGIN CONTENT -->
              <div class="col-md-12 col-sm-9">
                <div class="row product-list">
                  <!-- PRODUCT ITEM START -->
                  <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="product-item">
                      <div class="pi-img-wrapper">
                        <img src="<c:url value="/static/assets/frontend/pages/img/products/model1.jpg"/>" class="img-responsive" alt="Berry Lace Dress"/>
                        <div>
                          <a href="<c:url value="/static/assets/frontend/pages/img/products/model1.jpg"/>" class="btn btn-default fancybox-button">Xem ảnh</a>
                          <a href="#" class="btn btn-default fancybox-fast-view">Chi tiết</a>
                        </div>
                      </div>
                      <h3><a href="#">Berry Lace Dress Berry Lace Dress</a></h3>
                      <div class="pi-price">3,599,000 đ </div>
                      <a href="#" class="btn btn-default add2cart">Đặt tour</a>
                    </div>
                  </div>
                  <!-- PRODUCT ITEM END -->
                  <!-- PRODUCT ITEM START -->
                  <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="product-item">
                      <div class="pi-img-wrapper">
                        <img src="<c:url value="/static/assets/frontend/pages/img/products/model2.jpg"/>" class="img-responsive" alt="Berry Lace Dress"/>
                        <div>
                          <a href="<c:url value="/static/assets/frontend/pages/img/products/model2.jpg"/>" class="btn btn-default fancybox-button">Xem ảnh</a>
                          <a href="#" class="btn btn-default fancybox-fast-view">Chi tiết</a>
                        </div>
                      </div>
                      <h3><a href="#">Berry Lace Dress</a></h3>
                      <div class="pi-price">3,456,789 đ</div>
                      <a href="#" class="btn btn-default add2cart">Đặt tour</a>
                    </div>
                  </div>
                  <!-- PRODUCT ITEM END -->
                  <!-- PRODUCT ITEM START -->
                  <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="product-item">
                      <div class="pi-img-wrapper">
                        <img src="<c:url value="/static/assets/frontend/pages/img/products/model6.jpg"/>" class="img-responsive" alt="Berry Lace Dress"/>
                        <div>
                          <a href="<c:url value="/static/assets/frontend/pages/img/products/model6.jpg"/>" class="btn btn-default fancybox-button">Xem ảnh</a>
                          <a href="#" class="btn btn-default fancybox-fast-view">Chi tiết</a>
                        </div>
                      </div>
                      <h3><a href="#">Berry Lace Dress 2</a></h3>
                      <div class="pi-price">1,234,567 đ</div>
                      <a href="#" class="btn btn-default add2cart">Đặt tour</a>
                    </div>
                  </div>              
                  <!-- PRODUCT ITEM END -->
                </div>
                <div class="row product-list">
                  <!-- PRODUCT ITEM START -->
                  <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="product-item">
                      <div class="pi-img-wrapper">
                        <img src="<c:url value="/static/assets/frontend/pages/img/products/model4.jpg"/>" class="img-responsive" alt="Berry Lace Dress"/>
                        <div>
                          <a href="<c:url value="/static/assets/frontend/pages/img/products/model4.jpg"/>" class="btn btn-default fancybox-button">Xem ảnh</a>
                          <a href="#" class="btn btn-default fancybox-fast-view">Chi tiết</a>
                        </div>
                      </div>
                      <h3><a href="#">Berry Lace Dress Berry Lace Dress</a></h3>
                      <div class="pi-price">4,567,890 đ</div>
                      <a href="#" class="btn btn-default add2cart">Đặt tour</a>
                    </div>
                  </div>
                  <!-- PRODUCT ITEM END -->
                  <!-- PRODUCT ITEM START -->
                  <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="product-item">
                      <div class="pi-img-wrapper">
                        <img src="<c:url value="/static/assets/frontend/pages/img/products/model5.jpg"/>" class="img-responsive" alt="Berry Lace Dress"/>
                        <div>
                          <a href="<c:url value="/static/assets/frontend/pages/img/products/model5.jpg"/>" class="btn btn-default fancybox-button">Xem ảnh</a>
                          <a href="#" class="btn btn-default fancybox-fast-view">Chi tiết</a>
                        </div>
                      </div>
                      <h3><a href="#">Berry Lace Dress</a></h3>
                      <div class="pi-price">968,968 đ</div>
                      <a href="#" class="btn btn-default add2cart">Đặt tour</a>
                    </div>
                  </div>
                  <!-- PRODUCT ITEM END -->
                  <!-- PRODUCT ITEM START -->
                  <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="product-item">
                      <div class="pi-img-wrapper">
                        <img src="<c:url value="/static/assets/frontend/pages/img/products/model3.jpg"/>" class="img-responsive" alt="Berry Lace Dress"/>
                        <div>
                          <a href="<c:url value="/static/assets/frontend/pages/img/products/model3.jpg"/>" class="btn btn-default fancybox-button">Xem ảnh</a>
                          <a href="#" class="btn btn-default fancybox-fast-view">Chi tiết</a>
                        </div>
                      </div>
                      <h3><a href="#">Berry Lace Dress</a></h3>
                      <div class="pi-price">9,123,456 đ</div>
                      <a href="#" class="btn btn-default add2cart">Đặt tour</a>
                    </div>
                  </div>              
                  <!-- PRODUCT ITEM END -->
                </div>
                <!-- END PRODUCT LIST -->
              </div>
              <!-- END CONTENT -->
            </div>
            <!-- END SALE PRODUCT & NEW ARRIVALS -->
          </div>                
          <!-- END TABS AND TESTIMONIALS -->
          
            <div class="container">
              <!-- BEGIN SALE PRODUCT & NEW ARRIVALS -->
              <div class="row margin-bottom-40">
                <!-- BEGIN SALE PRODUCT -->
                <div class="col-md-12 sale-product">
                  <hr />
                  <h2 align="center">TOUR QUỐC TẾ YÊU THÍCH</h2>
                  <hr />
                <!-- END SALE PRODUCT -->
                <!-- BEGIN CONTENT -->
                <div class="col-md-12 col-sm-9">
                  <div class="row product-list">
                    <!-- PRODUCT ITEM START -->
                    <div class="col-md-4 col-sm-6 col-xs-12">
                      <div class="product-item">
                        <div class="pi-img-wrapper">
                          <img src="<c:url value="/static/assets/frontend/pages/img/products/model1.jpg"/>" class="img-responsive" alt="Berry Lace Dress"/>
                          <div>
                            <a href="<c:url value="/static/assets/frontend/pages/img/products/model1.jpg"/>" class="btn btn-default fancybox-button">Xem ảnh</a>
                            <a href="#" class="btn btn-default fancybox-fast-view">Chi tiết</a>
                          </div>
                        </div>
                        <h3><a href="#">Berry Lace Dress Berry Lace Dress</a></h3>
                        <div class="pi-price">3,132,456 đ</div>
                        <a href="#" class="btn btn-default add2cart">Đặt tour</a>
                      </div>
                    </div>
                    <!-- PRODUCT ITEM END -->
                    <!-- PRODUCT ITEM START -->
                    <div class="col-md-4 col-sm-6 col-xs-12">
                      <div class="product-item">
                        <div class="pi-img-wrapper">
                          <img src="<c:url value="/static/assets/frontend/pages/img/products/model2.jpg"/>" class="img-responsive" alt="Berry Lace Dress"/>
                          <div>
                            <a href="<c:url value="/static/assets/frontend/pages/img/products/model2.jpg"/>" class="btn btn-default fancybox-button">Xem ảnh</a>
                            <a href="#" class="btn btn-default fancybox-fast-view">Chi tiết</a>
                          </div>
                        </div>
                        <h3><a href="#">Berry Lace Dress</a></h3>
                        <div class="pi-price">6,456,789 đ</div>
                        <a href="#" class="btn btn-default add2cart">Đặt tour</a>
                      </div>
                    </div>
                    <!-- PRODUCT ITEM END -->
                    <!-- PRODUCT ITEM START -->
                    <div class="col-md-4 col-sm-6 col-xs-12">
                      <div class="product-item">
                        <div class="pi-img-wrapper">
                          <img src="<c:url value="/static/assets/frontend/pages/img/products/model6.jpg"/>" class="img-responsive" alt="Berry Lace Dress"/>
                          <div>
                            <a href="<c:url value="/static/assets/frontend/pages/img/products/model6.jpg"/>" class="btn btn-default fancybox-button">Xem ảnh</a>
                            <a href="#" class="btn btn-default fancybox-fast-view">Chi tiết</a>
                          </div>
                        </div>
                        <h3><a href="#">Berry Lace Dress 2</a></h3>
                        <div class="pi-price">147,258,369</div>
                        <a href="#" class="btn btn-default add2cart">Đặt tour</a>
                      </div>
                    </div>              
                    <!-- PRODUCT ITEM END -->
                  </div>
                  <div class="row product-list">
                    <!-- PRODUCT ITEM START -->
                    <div class="col-md-4 col-sm-6 col-xs-12">
                      <div class="product-item">
                        <div class="pi-img-wrapper">
                          <img src="<c:url value="/static/assets/frontend/pages/img/products/model4.jpg"/>" class="img-responsive" alt="Berry Lace Dress"/>
                          <div>
                            <a href="<c:url value="/static/assets/frontend/pages/img/products/model4.jpg"/>" class="btn btn-default fancybox-button">Xem ảnh</a>
                            <a href="#" class="btn btn-default fancybox-fast-view">Chi tiết</a>
                          </div>
                        </div>
                        <h3><a href="#">Berry Lace Dress Berry Lace Dress</a></h3>
                        <div class="pi-price">999,999 đ</div>
                        <a href="#" class="btn btn-default add2cart">Đặt tour</a>
                      </div>
                    </div>
                    <!-- PRODUCT ITEM END -->
                    <!-- PRODUCT ITEM START -->
                    <div class="col-md-4 col-sm-6 col-xs-12">
                      <div class="product-item">
                        <div class="pi-img-wrapper">
                          <img src="<c:url value="/static/assets/frontend/pages/img/products/model5.jpg"/>" class="img-responsive" alt="Berry Lace Dress"/>
                          <div>
                            <a href="<c:url value="/static/assets/frontend/pages/img/products/model5.jpg"/>" class="btn btn-default fancybox-button">Xem ảnh</a>
                            <a href="#" class="btn btn-default fancybox-fast-view">Chi tiết</a>
                          </div>
                        </div>
                        <h3><a href="#">Berry Lace Dress</a></h3>
                        <div class="pi-price">888,888 đ</div>
                        <a href="#" class="btn btn-default add2cart">Đặt tour</a>

                      </div>
                    </div>
                    <!-- PRODUCT ITEM END -->
                    <!-- PRODUCT ITEM START -->
                    <div class="col-md-4 col-sm-6 col-xs-12">
                      <div class="product-item">
                        <div class="pi-img-wrapper">
                          <img src="<c:url value="/static/assets/frontend/pages/img/products/model3.jpg"/>" class="img-responsive" alt="Berry Lace Dress"/>
                          <div>
                            <a href="<c:url value="/static/assets/frontend/pages/img/products/model3.jpg"/>" class="btn btn-default fancybox-button">Xem ảnh</a>
                            <a href="#" class="btn btn-default fancybox-fast-view">Chi tiết</a>
                          </div>
                        </div>
                        <h3><a href="#">Berry Lace Dress</a></h3>
                        <div class="pi-price">777,777 đ</div>
                        <a href="#" class="btn btn-default add2cart">Đặt tour</a>
                      </div>
                    </div>              
                    <!-- PRODUCT ITEM END -->
                  </div>
                  <!-- END PRODUCT LIST -->
                </div>
                <!-- END CONTENT -->
              </div>
      </div>                
      <!-- END TABS AND TESTIMONIALS -->
    </div>
  </div>

    <script type="text/javascript">
        jQuery(document).ready(function() {
            Layout.init();    
            Layout.initOWL();
            RevosliderInit.initRevoSlider();
            Layout.initTwitter();
            //Layout.initFixHeaderWithPreHeader(); /* Switch On Header Fixing (only if you have pre-header) */
            //Layout.initNavScrolling(); 
        });
    </script>
