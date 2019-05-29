<?php
    class Posts extends CI_Controller
    {
        var $act = array();
        public function __construct() {
            parent::__construct();
            $this->act['class'] = 'All';
            $this->load->model('Posts_model');
            $this->load->helper('url_helper');
        }
        public function index($category = null) {
            $this->load->library('pagination');

            $config['base_url'] = base_url() . 'posts/index/';
            $config['total_rows'] = $this->db->count_all('blog');
            $config['per_page'] = 2;
            
            $this->pagination->initialize($config);

            $data['title'] = 'Latest posts';
            if($category==null) {
                $data['posts'] = $this->posts_model->get_posts();
            } else {
                $data['posts'] = $this->posts_model->get_category($category);
            }

            $this->load->view("templates/header.php");
            $this->load->view("pages/index.php",$data, $this->act);
            $this->load->view("templates/footer.php");
        }

        public function view($slug = null)
        {
            $data['post'] = $this->posts_model->get_news($slug);

            if (empty($data['post'])) {
                show_404();
            }

            $data['title'] = $data['post']['title'];
            $this->load->view('templates/header', $data);
			$this->load->view('pages/view', $data);
			$this->load->view('templates/footer', $data);
        }

        public function createPosts() {

            if(!$this->session->userdata('logged_in')){
				redirect('users/login');
			}
            $this->load->view("templates/header.php");
            $this->load->view("pages/create.php");
            $this->load->view("templates/footer.php");

            if($this->input->post('title') != null) {
                $this->Posts_model->create_post();
            }
            
            
        }
        public function edit($id)
        {
            if($this->session->userdata('logged_in')) {
                $data['row'] = $this->posts_model->get_data($id);
            //  print_r($data);
                $this->load->view("templates/header.php");
                $this->load->view("pages/edit.php", $data);
                $this->load->view("templates/footer.php");
            } else {
                $data['title'] = 'Only admin can edit posts';

                $this->load->view('templates/header');
				$this->load->view('users/login', $data);
                $this->load->view('templates/footer');
            }
        }
        public function update($id)
        {
            if($this->session->userdata('logged_in')) {
                $this->posts_model->update($id);
                redirect('posts/index');     
            }else {
                $data['title'] = 'Only admin can update posts';

                $this->load->view('templates/header');
				$this->load->view('users/login', $data);
                $this->load->view('templates/footer');
            }

        }
        public function delete($id)
        {
            if($this->session->userdata('logged_in')) {
                $this->posts_model->delete($id);

                redirect('posts/index');  
            } else {
                $data['title'] = 'Only admin can delete posts';

                $this->load->view('templates/header');
				$this->load->view('users/login', $data);
                $this->load->view('templates/footer');
            }    
        }

        public function like($id = null)
        {
            // checks if cookie exists if not likes the post
            if($this->check_cookie($id)) {
                $this->posts_model->like($id);
            }
            redirect('posts/index'); 
        }

        public function check_cookie($id)
        {
            
            // check is cookie exists if not creates a cookie
            if(get_cookie($id) == $id) {
                return false;
            } else if(get_cookie($id) == null) {
                $cookie= array(
                    'name'   => $id,
                    'value'  => $id,
                    'expire' => '3600',
                );
                $this->input->set_cookie($cookie);
                return true;
            }
             
            return true;
        }

        
        
    }
    
?>