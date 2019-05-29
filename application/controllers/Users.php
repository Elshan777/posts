<?php
	class Users extends CI_Controller{
        public function login()
        {
            $data['title'] = 'Sign in';

            $this->form_validation->set_rules('username', 'Username', 'required');
            $this->form_validation->set_rules('password', 'Password', 'required');

            if($this->form_validation->run() === FALSE){
				$this->load->view('templates/header');
				$this->load->view('users/login', $data);
				$this->load->view('templates/footer');
            } 
            else {
                // Get username
				$username = $this->input->post('username');
				// Get and encrypt the password
                $password = md5($this->input->post('password'));
                

                // Login user
                $user_id = $this->user_model->login($username, $password);
                
                if($user_id) {
                    // Create session
                    $user_data = array(
                        'user_id' => $user_id,
                        'username' => $username,
						'logged_in' => true
                    );
                    $this->session->set_userdata($user_data);

					// Set message
                    $this->session->set_flashdata('user_loggedin', 'You are now logged in');
                    redirect('posts/index');

                } else {
                    $this->session->set_flashdata('login_failed', 'Login is invalid');

                    redirect('users/login');
                }
            }
        }
        public function logout()
        {
        
            // unset user data
            $this->session->unset_userdata('logged_in');
            $this->session->unset_userdata('user_id');
            $this->session->unset_userdata('username');

            // set message
            $this->session->set_flashdata('user_loggedout', 'You are now logged out');

            redirect('users/login');
        }
    }
?>    