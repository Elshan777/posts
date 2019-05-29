<div class="container">
<?php echo form_open_multipart('posts/createPosts'); ?>
  <div class="form-group">
    <label for="exampleFormControlInput1">Title</label>
    <input type="text" class="form-control" name="title" id="exampleFormControlInput1" placeholder="title">
  </div>
  <select class="custom-select custom-select-lg mb-3" name="category">
    <option selected value="Politics">Politics</option>
    <option value="Business">Business</option>
    <option value="Tech">Tech</option>
    <option value="Sport">Sport</option>
    <option value="Weather">Weather</option>
  </select>
  <div class="form-group">
    <label for="exampleFormControlTextarea1">Text</label>
    <textarea class="form-control" name="text" id="exampleFormControlTextarea1" 
    rows="3" placeholder="Enter your text here "></textarea>
   </div>
  <button type="submit" class="btn btn-primary" name='sub'>Submit</button>
</form>
</div>