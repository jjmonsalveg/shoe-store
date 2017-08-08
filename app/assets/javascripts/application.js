// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery/dist/jquery
//= require datatables
//= require rails-ujs
//= require material-design-lite/material.min.js
//= require mdl-components-ext/package/material.components.ext.min.js
//= require_tree .

$(document).ready(function() {
    $("table[role='datatable']").each(function(){
        $(this).DataTable({
            processing: true,
            serverSide: true,
            ajax: $(this).data('url'),
            columnDefs: [
                {
                    targets: [0,1,2,3,4,5,6 ],
                    className: 'mdl-data-table__cell--non-numeric'
                }
            ]
        });
    });
} );



