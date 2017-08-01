<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <div class="main">
      <div class="container">
        <ul class="breadcrumb">
            <li><a href="/">Trang chủ</a></li>
            <li class="active">Liên hệ</li>
        </ul>
        <div class="row margin-bottom-40">
          <!-- BEGIN CONTENT -->
          <div class="col-md-12">
            <h1>Liên hệ</h1>
            <div class="content-page">
              <div class="row">
                <div class="col-md-12">
                  <div id="map" class="gmaps margin-bottom-40" style="height:400px;"></div>
                </div>
                <div class="col-md-9 col-sm-9">
                  <h2>Mẫu liên hệ</h2>
                  <p>Lorem ipsum dolor sit amet, Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat consectetuer adipiscing elit, sed diam nonummy nibh euismod tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>
                  
                  <!-- BEGIN FORM-->
                  <form action="#" role="form">
                    <div class="form-group">
                      <label for="contacts-name">Name</label>
                      <input type="text" class="form-control" id="contacts-name"/>
                    </div>
                    <div class="form-group">
                      <label for="contacts-email">Email</label>
                      <input type="email" class="form-control" id="contacts-email"/>
                    </div>
                    <div class="form-group">
                      <label for="contacts-message">Message</label>
                      <textarea class="form-control" rows="5" id="contacts-message"></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary"><i class="icon-ok"></i> Send</button>
                    <button type="button" class="btn btn-default">Cancel</button>
                  </form>
                  <!-- END FORM-->
                </div>

                <div class="col-md-3 col-sm-3 sidebar2">
                  <h2>Liên hệ chúng tôi</h2>
                  <address>
                    <strong>Loop, Inc.</strong><br />
                    795 Park Ave, Suite 120<br />
                    San Francisco, CA 94107<br />
                    <abbr title="Phone">P:</abbr> (234) 145-1810
                  </address>
                  <address>
                    <strong>Email</strong><br />
                    <a href="mailto:info@email.com">info@email.com</a><br />
                    <a href="mailto:support@example.com">support@example.com</a>
                  </address>
                  <ul class="social-icons margin-bottom-40">
                    <li><a href="#" data-original-title="facebook" class="facebook"></a></li>
                    <li><a href="#" data-original-title="github" class="github"></a></li>
                    <li><a href="#" data-original-title="Goole Plus" class="googleplus"></a></li>
                    <li><a href="#" data-original-title="linkedin" class="linkedin"></a></li>
                    <li><a href="#" data-original-title="rss" class="rss"></a></li>
                  </ul>

                  <h2 class="padding-top-30">Giới thiệu</h2>
                  <p>Sediam nonummy nibh euismod tation ullamcorper suscipit</p>
                  <ul class="list-unstyled">
                    <li><i class="fa fa-check"></i> Officia deserunt molliti</li>
                    <li><i class="fa fa-check"></i> Consectetur adipiscing </li>
                    <li><i class="fa fa-check"></i> Deserunt fpicia</li>
                  </ul>        
                </div>
              </div>
            </div>
          </div>
          <!-- END CONTENT -->
        </div>
      </div>
    </div>

    <script type="text/javascript">
        jQuery(document).ready(function() {
            Layout.init();
            Layout.initUniform();
            ContactUs.init();
            Layout.initTwitter();
        });
    </script>
