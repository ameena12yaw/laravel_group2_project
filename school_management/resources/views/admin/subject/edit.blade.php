@extends('layouts.app')


@section( 'content')




<div class="content-wrapper">
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Edit Subject</h1>
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
                    <label>Subject Name</label>
                    <input type="text" value="{{ $getRecord->name }}" name="name" class="form-control" required placeholder="Class Name">
                  </div>

                  <div class="form-group">
                    <label>Subject Type</label>
                    <select class="form-control" name="type" required>
                        <option>--select subject type--</option>
                        <option {{ ($getRecord->type == 'Theory') ? 'selected' : '' }} value="Theory">Theory</option>
                        <option {{ ($getRecord->type == 'Practical') ? 'selected' : '' }} value="Practical">Practical</option>
                    </select>
                  </div>

                  <div class="form-group">
                    <label>Status</label>
                    <select class="form-control" name="status">
                        <option>--select status--</option>
                        <option {{ ($getRecord->status == 0) ? 'selected' : '' }} value="0">Active</option>
                        <option {{ ($getRecord->status == 1) ? 'selected' : '' }} value="1">Inactive</option>
                    </select>
                  </div>
                </div>
                  <div class="card-footer">
                    <button type="submit" class="btn btn-primary">Update</button>
                  </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>
</div>

  @endsection
