<?php
    if(isset($_POST['btn'])) {
        $obj_checkout->save_customer_info($_POST);
    }
?>
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-body">
                <h3 class="text-center text-success">You may login from here. If you are not registered then please register first.</h3>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-body">
                <h3 class="text-center text-success">You May Login Here</h3>
                <hr/>
                <form class="form-horizontal" action="" method="post"> 
                    <div class="form-group">
                        <label class="control-label col-lg-3">Email Address</label>
                        <div class="col-lg-9">
                            <input type="email" name="email_address" class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-lg-3">Password</label>
                        <div class="col-lg-9">
                            <input type="password" name="password" class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-lg-offset-3 col-lg-9">
                            <input type="submit" name="btn" class="btn btn-primary btn-block" value="Login">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-body">
                <h3 class="text-center text-success">You May Register Here</h3>
                <hr/>
                <form class="form-horizontal" action="" method="post"> 
                    <div class="form-group">
                        <label class="control-label col-lg-3">First Name</label>
                        <div class="col-lg-9">
                            <input type="text" name="first_name" class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-lg-3">Last Name</label>
                        <div class="col-lg-9">
                            <input type="text" name="last_name" class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-lg-3">Email Address</label>
                        <div class="col-lg-9">
                            <input type="email" name="email_address" class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-lg-3">Password</label>
                        <div class="col-lg-9">
                            <input type="password" name="password" class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-lg-3">Address</label>
                        <div class="col-lg-9">
                            <textarea name="address" class="form-control" rows="8"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-lg-3">Phone Number</label>
                        <div class="col-lg-9">
                            <input type="number" name="phone_number" class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-lg-offset-3 col-lg-9">
                            <input type="submit" name="btn" class="btn btn-primary btn-block" value="sign Up">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

