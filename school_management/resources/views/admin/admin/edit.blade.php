@extends('layouts.app')


@section( 'content')




<div class="content-wrapper">
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Edit Admin</h1>
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
                    <label>Name</label>
                    <input type="text" name="name" value="{{ $getRecord->name }}" class="form-control" required placeholder="Name">
                  </div>
                  <div class="form-group">
                    <label>Email address</label>
                    <input type="email" name="email" value="{{ $getRecord->email }}" class="form-control" required placeholder="Email">
                  </div>
                  <div class="form-group">
                    <label>Password</label>
                    <input type="text" name="password"  class="form-control" placeholder="Password">
                    <p>Add new password if you wish to change password</p>
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
