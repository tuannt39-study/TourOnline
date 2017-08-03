var TableManaged = function () {

    var initTable1 = function () {

        var table = $('#sample_1');
        
        table.dataTable({
            "language": {
                "aria": {
                    "sortAscending": ": activate to sort column ascending",
                    "sortDescending": ": activate to sort column descending"
                },
                "emptyTable": "Không có dữ liệu",
                "info": "Hiện _START_ tới _END_ của _TOTAL_ kết quả",
                "infoEmpty": "No entries found",
                "infoFiltered": "(lọc từ _MAX_ kết quả)",
                "lengthMenu": "Hiện _MENU_ kết quả",
                "search": "Search:",
                "zeroRecords": "Không tìm thấy"
            },
            
            "bStateSave": false,

            "columns": [{
                "orderable": true
            }, {
                "orderable": false
            }, {
                "orderable": false
            }, {
                "orderable": false
            }, {
                "orderable": false
            }, {
                "orderable": false
            }, {
                "orderable": false
            }, {
                "orderable": false
            }, {
                "orderable": false
            }],
            "lengthMenu": [
                [5, 15, 20, -1],
                [5, 15, 20, "Tất cả"]
            ],
            
            "pageLength": 5,            
            "pagingType": "bootstrap_full_number",
            "language": {
                "search": "Tìm kiếm: ",
                "lengthMenu": "  _MENU_ kết quả",
                "paginate": {
                    "previous":"Prev",
                    "next": "Next",
                    "last": "Last",
                    "first": "First"
                }
            },
            "columnDefs": [{
                'orderable': false,
                'targets': [0]
            }, {
                "searchable": false,
                "targets": [0]
            }],
            "order": [
                [0, "asc"]
            ]
        });
    }

    var initTable2 = function () {

        var table = $('#sample_2');
        
        table.dataTable({
            "language": {
                "aria": {
                    "sortAscending": ": activate to sort column ascending",
                    "sortDescending": ": activate to sort column descending"
                },
                "emptyTable": "Không có dữ liệu",
                "info": "Hiện _START_ tới _END_ của _TOTAL_ kết quả",
                "infoEmpty": "No entries found",
                "infoFiltered": "(lọc từ _MAX_ kết quả)",
                "lengthMenu": "Hiện _MENU_ kết quả",
                "search": "Search:",
                "zeroRecords": "Không tìm thấy"
            },
            
            "bStateSave": false,

            "columns": [{
                "orderable": true
            }, {
                "orderable": false
            }, {
                "orderable": false
            }, {
                "orderable": false
            }, {
                "orderable": false
            }, {
                "orderable": false
            }, {
                "orderable": false
            }],
            "lengthMenu": [
                [5, 15, 20, -1],
                [5, 15, 20, "Tất cả"]
            ],
            
            "pageLength": 5,            
            "pagingType": "bootstrap_full_number",
            "language": {
                "search": "Tìm kiếm: ",
                "lengthMenu": "  _MENU_ kết quả",
                "paginate": {
                    "previous":"Prev",
                    "next": "Next",
                    "last": "Last",
                    "first": "First"
                }
            },
            "columnDefs": [{
                'orderable': false,
                'targets': [0]
            }, {
                "searchable": false,
                "targets": [0]
            }],
            "order": [
                [0, "asc"]
            ]
        });
    }

    var initTable3 = function () {

        var table = $('#sample_3');
        
        table.dataTable({
            "language": {
                "aria": {
                    "sortAscending": ": activate to sort column ascending",
                    "sortDescending": ": activate to sort column descending"
                },
                "emptyTable": "Không có dữ liệu",
                "info": "Hiện _START_ tới _END_ của _TOTAL_ kết quả",
                "infoEmpty": "No entries found",
                "infoFiltered": "(lọc từ _MAX_ kết quả)",
                "lengthMenu": "Hiện _MENU_ kết quả",
                "search": "Search:",
                "zeroRecords": "Không tìm thấy"
            },
            
            "bStateSave": false,

            "columns": [{
                "orderable": true
            }, {
                "orderable": false
            }, {
                "orderable": false
            }, {
                "orderable": false
            }, {
                "orderable": false
            }, {
                "orderable": false
            }, {
                "orderable": false
            }, {
                "orderable": false
            }, {
                "orderable": false
            }, {
                "orderable": false
            }],
            "lengthMenu": [
                [5, 15, 20, -1],
                [5, 15, 20, "Tất cả"]
            ],
            
            "pageLength": 5,            
            "pagingType": "bootstrap_full_number",
            "language": {
                "search": "Tìm kiếm: ",
                "lengthMenu": "  _MENU_ kết quả",
                "paginate": {
                    "previous":"Prev",
                    "next": "Next",
                    "last": "Last",
                    "first": "First"
                }
            },
            "columnDefs": [{
                'orderable': false,
                'targets': [0]
            }, {
                "searchable": false,
                "targets": [0]
            }],
            "order": [
                [0, "asc"]
            ]
        });
    }

    var initTable4 = function () {

        var table = $('#sample_4');
        
        table.dataTable({
            "language": {
                "aria": {
                    "sortAscending": ": activate to sort column ascending",
                    "sortDescending": ": activate to sort column descending"
                },
                "emptyTable": "Không có dữ liệu",
                "info": "Hiện _START_ tới _END_ của _TOTAL_ kết quả",
                "infoEmpty": "No entries found",
                "infoFiltered": "(lọc từ _MAX_ kết quả)",
                "lengthMenu": "Hiện _MENU_ kết quả",
                "search": "Search:",
                "zeroRecords": "Không tìm thấy"
            },
            
            "bStateSave": false,

            "columns": [{
                "orderable": true
            }, {
                "orderable": false
            }, {
                "orderable": false
            }, {
                "orderable": false
            }, {
                "orderable": false
            }, {
                "orderable": false
            }, {
                "orderable": false
            }, {
                "orderable": false
            }, {
                "orderable": false
            }, {
                "orderable": false
            }, {
                "orderable": false
            }],
            "lengthMenu": [
                [5, 15, 20, -1],
                [5, 15, 20, "Tất cả"]
            ],
            
            "pageLength": 5,            
            "pagingType": "bootstrap_full_number",
            "language": {
                "search": "Tìm kiếm: ",
                "lengthMenu": "  _MENU_ kết quả",
                "paginate": {
                    "previous":"Prev",
                    "next": "Next",
                    "last": "Last",
                    "first": "First"
                }
            },
            "columnDefs": [{
                'orderable': false,
                'targets': [0]
            }, {
                "searchable": false,
                "targets": [0]
            }],
            "order": [
                [0, "asc"]
            ]
        });
    }

    return {
        init: function () {
            if (!jQuery().dataTable) {
                return;
            }
            initTable1();
            initTable2();
            initTable3();
            initTable4();
        }
    };

}();