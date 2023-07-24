@extends('layouts.app')


@section( 'content')




<div class="content-wrapper">
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Add New Subject</h1>
          </div>
        </div>
      </div>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-12">
            <div class="card card-primary">
              <form method="post" action="">
                {{ csrf_field() }}
                <div class="card-body">
                  <div class="form-group">
                    <label>Class Name</label>
                    <input type="text" name="name" value="" class="form-control" required placeholder="Class Name">
                  </div>

                  <div class="form-group">
                    <label>Subject Type</label>
                    <select class="form-control" name="type" required>
                        <option>--select subject type--</option>
                        <option value="Theory">Theory</option>
                        <option value="Practical">Practical</option>
                    </select>
                  </div>

                  <div class="form-group">
                    <label>Status</label>
                    <select class="form-control" name="status">
                        <option>--select status--</option>
                        <option value="0">Active</option>
                        <option value="1">Inactive</option>
                    </select>
                  </div>
                </div>
                  <div class="card-footer">
                    <button type="submit" class="btn btn-primary">Create</button>
                  </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>
</div>

  @endsection
