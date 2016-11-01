<div class="feedback" id="plugin-feedback-<?=$plugin_id?>">
    <form action="#plugin-feedback-<?=$plugin_id?>" method="POST">

    <?php if ($success) { ?>
        <div class="alert alert-danger"><?=$success?></div>
    <?php } else { ?>
        <?php foreach ($fields as $i => $field) { ?>
            <div class="form-group <?=($field['error']) ? 'has-error' : ''?>">
            <?php if ($field['type'] == 'text') { ?>

                <label for="<?=$field['name']?>"><?=$field['label']?><?=($field['required']) ? ' *' : ''?></label>
                <?php if ($field['error']) { ?><span class="text-danger"><?=$field['error']?></span><?php } ?>
                <input id="<?=$field['name']?>" type="text" class="form-control" name="<?=$field['name']?>" value="<?=$field['value']?>" <?=($field['required']) ? 'required' : ''?>>
            
            <?php } elseif ($field['type'] == 'textarea') { ?>

                <label for="<?=$field['name']?>"><?=$field['label']?><?=($field['required']) ? ' *' : ''?></label>
                <?php if ($field['error']) { ?><span class="text-danger"><?=$field['error']?></span><?php } ?>
                <textarea id="<?=$field['name']?>" class="form-control" name="<?=$field['name']?>" <?=($field['required']) ? 'required' : ''?>><?=$field['value']?></textarea>
                
            <?php } elseif ($field['type'] == 'select') { ?>

                <label for="<?=$field['name']?>"><?=$field['label']?><?=($field['required']) ? ' *' : ''?></label>
                <?php if ($field['error']) { ?><span class="text-danger"><?=$field['error']?></span><?php } ?>
                
                <select id="<?=$field['name']?>" class="form-control" name="<?=$field['name']?>" <?=($field['required']) ? 'required' : ''?>>
                    <?php foreach ($field['option_list'] as $option) { ?>
                        <?php if ($option == $field['value']) { ?>
                        <option value="<?=$option?>" selected><?=$option?></option>
                        <?php } else { ?>
                        <option value="<?=$option?>"><?=$option?></option>
                        <?php } ?>
                    <?php } ?>
                </select>
                
            <?php } elseif ($field['type'] == 'checkbox') { ?>

                <?php if ($field['value']) { ?>
                    <input id="<?=$field['name']?>" type="checkbox" name="<?=$field['name']?>" value="1" checked >
                <?php } else { ?>
                    <input id="<?=$field['name']?>" type="checkbox" name="<?=$field['name']?>" value="1">
                <?php } ?>

                <label for="<?=$field['name']?>"><?=$field['label']?><?=($field['required']) ? ' *' : ''?></label>
                <?php if ($field['error']) { ?><span class="text-danger"><?=$field['error']?></span><?php } ?>
                
            <?php } elseif ($field['type'] == 'submit') { ?>

                <input type="submit" class="btn btn-primary" name="<?=$field['name']?>" value="<?=$field['label']?>" class="submit_<?=$plugin_id;?>">

            <?php } ?>
            </div>
        <?php } ?>
    <?php } ?>
    * - обязательны для заполнения
    </form>
</div>