<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-rgbfeaturedcategory" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-rgbfeaturedcategory" class="form-horizontal">
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_name; ?></label>
            <div class="col-sm-10">
              <input type="text" name="name" value="<?php echo $name; ?>" placeholder="<?php echo $entry_name; ?>" id="input-name" class="form-control" />
              <?php if ($error_name) { ?>
              <div class="text-danger"><?php echo $error_name; ?></div>
              <?php } ?>
            </div>
          </div> 
		   <div class="tab-pane">
            <ul class="nav nav-tabs" id="language">
              <?php foreach ($languages as $language) { ?>
              <li><a href="#language<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
              <?php } ?>
            </ul>
            <div class="tab-content">
              <?php foreach ($languages as $language) { ?>
              <div class="tab-pane" id="language<?php echo $language['language_id']; ?>">
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-title<?php echo $language['language_id']; ?>"><?php echo $entry_title; ?></label>
                  <div class="col-sm-10">
                    <input type="text" name="module_description[<?php echo $language['language_id']; ?>][title]" placeholder="<?php echo $entry_title; ?>" id="input-heading<?php echo $language['language_id']; ?>" value="<?php echo isset($module_description[$language['language_id']]['title']) ? $module_description[$language['language_id']]['title'] : ''; ?>" class="form-control" />
                  </div>
                </div>
              </div>
              <?php } ?>
            </div>
          </div>
		   <div class="form-group">
            <label class="col-sm-2 control-label" for="input-displaytitle"><?php echo $entry_displaytitle; ?></label>
            <div class="col-sm-10">
              <select name="displaytitle" id="input-displaytitle" class="form-control">
                <?php if ($displaytitle) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div> 
		   <div class="form-group">
            <label class="col-sm-2 control-label" for="input-url"><?php echo $entry_url; ?></label>
            <div class="col-sm-10">
              <input type="text" name="url" value="<?php echo $url; ?>" placeholder="<?php echo $entry_url; ?>" id="input-url" class="form-control" />
			</div> 
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-category"><?php echo $entry_category; ?></label>
            <div class="col-sm-10">
              <input type="text" name="category" value="" placeholder="<?php echo $entry_category; ?>" id="input-category" class="form-control" />
              <div id="rgbfeaturedcategory" class="well well-sm" style="height: 150px; overflow: auto;">
                <?php foreach ($categories as $category) { ?>
                <div id="rgbfeaturedcategory<?php echo $category['category_id']; ?>"><i class="fa fa-minus-circle"></i> <?php echo $category['name']; ?>
                  <input type="hidden" name="category[]" value="<?php echo $category['category_id']; ?>" />
                </div>
                <?php } ?>
              </div>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-limit"><?php echo $entry_limit; ?></label>
            <div class="col-sm-10">
              <input type="text" name="limit" value="<?php echo $limit; ?>" placeholder="<?php echo $entry_limit; ?>" id="input-limit" class="form-control" />
            </div>
          </div>
		  <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_carousel_status; ?></label>
            <div class="col-sm-10">
              <select name="carousel_status" id="input-carousel_status" class="form-control">
                <?php if ($carousel_status) { ?>
                <option value="1" selected="selected"><?php echo "Yes"; ?></option>
                <option value="0"><?php echo "No"; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo "Yes"; ?></option>
                <option value="0" selected="selected"><?php echo "No"; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
		  <div class="form-group">
            <label class="col-sm-2 control-label" for="input-items"><?php echo $entry_items; ?></label>
            <div class="col-sm-10">
              <input type="text" name="items" value="<?php echo $items; ?>" placeholder="<?php echo $entry_items; ?>" id="input-items" class="form-control" />
            </div>
          </div>
		   <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_description_status; ?></label>
            <div class="col-sm-10">
              <select name="description_status" id="input-description_status" class="form-control">
                <?php if ($description_status) { ?>
                <option value="1" selected="selected"><?php echo "Yes"; ?></option>
                <option value="0"><?php echo "No"; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo "Yes"; ?></option>
                <option value="0" selected="selected"><?php echo "No"; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
		  
		  
		  
		  <div class="form-group">
            <label class="col-sm-2 control-label" for="input-description-length"><?php echo $entry_description_length; ?></label>
            <div class="col-sm-10">
              <input type="text" name="description_length" value="<?php echo $description_length; ?>" placeholder="<?php echo $entry_description_length; ?>" id="input-width" class="form-control" />
              <?php if ($error_description_length) { ?>
              <div class="text-danger"><?php echo $error_description_length; ?></div>
              <?php } ?>
            </div>
          </div>
		  
		  
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-width"><?php echo $entry_width; ?></label>
            <div class="col-sm-10">
              <input type="text" name="width" value="<?php echo $width; ?>" placeholder="<?php echo $entry_width; ?>" id="input-width" class="form-control" />
              <?php if ($error_width) { ?>
              <div class="text-danger"><?php echo $error_width; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-height"><?php echo $entry_height; ?></label>
            <div class="col-sm-10">
              <input type="text" name="height" value="<?php echo $height; ?>" placeholder="<?php echo $entry_height; ?>" id="input-height" class="form-control" />
              <?php if ($error_height) { ?>
              <div class="text-danger"><?php echo $error_height; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
            <div class="col-sm-10">
              <select name="status" id="input-status" class="form-control">
                <?php if ($status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
  <script type="text/javascript"><!--
$('input[name=\'category\']').autocomplete({
	source: function(request, response) {
		$.ajax({
			url: 'index.php?route=catalog/category/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
			dataType: 'json',
			success: function(json) {
				response($.map(json, function(item) {
					return {
						label: item['name'],
						value: item['category_id']
					}
				}));
			}
		});
	},
	select: function(item) {
		$('input[name=\'category\']').val('');
		
		$('#rgbfeaturedcategory' + item['value']).remove();
		
		$('#rgbfeaturedcategory').append('<div id="rgbfeaturedcategory' + item['value'] + '"><i class="fa fa-minus-circle"></i> ' + item['label'] + '<input type="hidden" name="category[]" value="' + item['value'] + '" /></div>');	
	}
});
	
$('#rgbfeaturedcategory').delegate('.fa-minus-circle', 'click', function() {
	$(this).parent().remove(); 
});
//--></script>
<script type="text/javascript"><!--
<?php foreach ($languages as $language) { ?>
$('#input-description<?php echo $language['language_id']; ?>').summernote({height: 300});
<?php } ?>
//--></script> 
  <script type="text/javascript"><!--
$('#language a:first').tab('show');
//--></script>
</div>
<?php echo $footer; ?>