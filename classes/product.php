<?php

require_once 'db_connect.php';

class product extends Db_Connect {

    //put your code here
    protected $link;

    public function __construct() {
        $this->link = $this->database_connection();
    }

    public function save_product_info($data) {
        $directory = '../assets/product_images/';
        $target_file = $directory . $_FILES['product_image']['name'];
        $file_type = pathinfo($target_file, PATHINFO_EXTENSION);
        $file_size = $_FILES['product_image']['size'];
        $check = getimagesize($_FILES['product_image']['tmp_name']);
        if ($check) {
            if (file_exists($target_file)) {
                die("This image already exists. please try another one !");
            } else {
                if ($file_type != 'jpg' && $file_type != 'png') {
                    die('Sorry the file type is not valid. use jpg or png.');
                } else {
                    if ($file_size > 500000) {
                        die("your file size is too large. please use with in 5mb");
                    } else {
                        move_uploaded_file($_FILES['product_image']['tmp_name'], $target_file);
                        $sql = "INSERT INTO tbl_product (product_name, category_id, manufacturer_id, product_price, product_quantity, product_short_description, product_long_description, product_image, publication_status) VALUES ('$data[product_name]', '$data[category_id]', '$data[manufacturer_id]', '$data[product_price]', '$data[product_quantity]', '$data[product_short_description]', '$data[product_long_description]', '$target_file', '$data[publication_status]')";
                        if (mysqli_query($this->link, $sql)) {
                            $message = "Product info save successfully";
                            return $message;
                        } else {
                            die('Query Problem' . mysqli_error($this->link));
                        }
                    }
                }
            }
        } else {
            die('Please select an valid image  file for upload');
        }
    }

    public function select_all_product_info() {
        $sql = "SELECT p.product_id, p.product_name, p.product_price, p.product_quantity, p.publication_status, c.category_name, m.manufacturer_name FROM tbl_product as p, tbl_category as c, tbl_manufacturer as m WHERE p.category_id = c.category_id AND p.manufacturer_id = m.manufacturer_id";
        if (mysqli_query($this->link, $sql)) {
            $query_result = mysqli_query($this->link, $sql);
            return $query_result;
        } else {
            die('Query problem' . mysqli_error($this->link));
        }
    }

    public function select_product_info_by_id($product_id) {
        $sql = "SELECT p.*, c.category_name, m.manufacturer_name FROM tbl_product as p, tbl_category as c, tbl_manufacturer as m WHERE p.category_id = c.category_id AND p.manufacturer_id = m.manufacturer_id AND p.product_id = '$product_id'  ";
        if (mysqli_query($this->link, $sql)) {
            $query_result = mysqli_query($this->link, $sql);
            return $query_result;
        } else {
            die('Query problem' . mysqli_error($this->link));
        }
    }

    public function unpublished_product_by_id($product_id) {
        $sql = "UPDATE tbl_product SET publication_status = 0 WHERE product_id = '$product_id' ";
        if (mysqli_query($this->link, $sql)) {
            $message = "Product info unpublished successfully";
            return $message;
        } else {
            die('Query problem' . mysqli_error($this->link));
        }
    }

    public function published_product_by_id($product_id) {
        $sql = "UPDATE tbl_product SET publication_status = 1 WHERE product_id = '$product_id' ";
        if (mysqli_query($this->link, $sql)) {
            $message = "Product info published successfully";
            return $message;
        } else {
            die('Query problem' . mysqli_error($this->link));
        }
    }

    public function update_product_info($data) {

        $new_image = $_FILES['product_image']['name'];
        if ($new_image) {
            $directory = '../assets/product_images/';
            $target_file = $directory . $_FILES['product_image']['name'];
            $file_type = pathinfo($target_file, PATHINFO_EXTENSION);
            $file_size = $_FILES['product_image']['size'];
            $check = getimagesize($_FILES['product_image']['tmp_name']);
            if ($check) {
                if (file_exists($target_file)) {
                    die("This image already exists. please try another one !");
                } else {
                    if ($file_type != 'jpg' && $file_type != 'png') {
                        die('Sorry the file type is not valid. use jpg or png.');
                    } else {
                        if ($file_size > 500000) {
                            die("your file size is too large. please use with in 5mb");
                        } else {
                            move_uploaded_file($_FILES['product_image']['tmp_name'], $target_file);
                            $sql = "UPDATE tbl_product SET product_name = '$data[product_name]', category_id = '$data[category_id]', manufacturer_id = '$data[manufacturer_id]', product_price = '$data[product_price]', product_quantity ='$data[product_quantity]', product_short_description = '$data[product_short_description]', product_long_description = '$data[product_long_description]', product_image='$target_file', publication_status='$data[publication_status]' WHERE product_id = '$data[product_id]' ";
                            if (mysqli_query($this->link, $sql)) {
                                $_SESSION['message'] = "Product info Update successfully";
                                header('Location: manage_product.php');
                            } else {
                                die('Query Problem' . mysqli_error($this->link));
                            }
                        }
                    }
                }
            } else {
                die('Please select an valid image  file for upload');
            }
        } else {

            $sql = "UPDATE tbl_product SET product_name = '$data[product_name]', category_id = '$data[category_id]', manufacturer_id = '$data[manufacturer_id]', product_price = '$data[product_price]', product_quantity ='$data[product_quantity]', product_short_description = '$data[product_short_description]', product_long_description = '$data[product_long_description]', publication_status='$data[publication_status]' WHERE product_id = '$data[product_id]' ";
            if (mysqli_query($this->link, $sql)) {
                $_SESSION['message'] = "Product info Update successfully";
                header('Location: manage_product.php');
            } else {
                die('Query Problem' . mysqli_error($this->link));
            }
        }
    }
    
    public function delete_product_by_id($product_id) {
        $sql="DELETE FROM tbl_product WHERE product_id = '$product_id' ";
         if (mysqli_query($this->link, $sql)) {
                $message = "Product info Delete successfully";
                return $message;
            } else {
                die('Query Problem' . mysqli_error($this->link));
            }
    }

}
