<?php
	class Posts_model extends CI_Model{
		public function __construct(){
			$this->load->database();
        }
        // get all news
        public function get_posts()
        {
            $this->db->order_by('blog.id', 'DESC');
            $query = $this->db->get_where('blog');
            return $query->result_array();
        }
        // get news by single category
        public function get_category($category = null)
        {
            $this->db->order_by('blog.id', 'DESC');
            $query = $this->db->get_where('blog', array('category' => $category));
            return $query->result_array();
        }
        // get post for given id
        public function get_data($id)
        {
            $query = $this->db->query('SELECT * FROM blog WHERE `id` =' .$id);
            return $query->row();
        }
        // get post for given slug used in read more feture
        public function get_news($slug = FALSE)
        {
            if($slug === FALSE) {
                $query = $this->db->get('blog');
                return $query->result_array();
            }

            $query = $this->db->get_where('blog', array('slug' => $slug));
            return $query->row_array();
        
        }
        public function create_post() {
            $slug = url_title($this->input->post('title'),'dash', TRUE);
            $data = array(
                'title' => $this->input->post('title'),
                'slug' => $slug,
                'text' => $this->input->post('text'),
                'category' => $this->input->post('category')
            );
            $this->db->insert('blog',$data);
        }
        public function update($id)
        {
            $data = array(
                'title' => $this->input->post('title'),
                'slug' => url_title($this->input->post('title'),'dash', TRUE),
                'text' => $this->input->post('text')
            );
            $this->db->where('id',$id);
            $this->db->update('blog',$data);
        }

        public function delete($id)
        {
            $this->db->where('id',$id);
            $this->db->delete('blog');    
        }

        public function like($id = null)
        {
            // when user click like button changes likes of post in the db
            $query = $this->db->query('SELECT likes FROM blog WHERE `id` =' .$id);
            $likes = $query->row('likes')+1;
             
            $this->db->query('UPDATE blog SET likes = '.$likes.' WHERE `id` = '.$id);

        }
    }

?>