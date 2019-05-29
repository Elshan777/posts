<div class="container">
<?php echo form_open_multipart('posts/update/'.$row->id); ?>
  <div class="form-group">
    <label for="exampleFormControlInput1">Title</label>
    <input type="text" class="form-control" name="title" id="exampleFormControlInput1" placeholder="title"
    value="<?php echo $row->title ?>">
  </div>
  <div class="form-group">
    <label for="exampleFormControlTextarea1">Text</label>
    <textarea class="form-control" name="text" id="exampleFormControlTextarea1" 
    rows="3" placeholder="Enter your text here "><?php echo $row->text ?></textarea>
   </div>
  <button type="submit" class="btn btn-primary" name='sub'>Update</button>
</form>
</div>