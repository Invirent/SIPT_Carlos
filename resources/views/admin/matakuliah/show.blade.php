@extends('layouts.app')

@section('header', 'Data Mata Kuliah')

@section('content')
    <div class="container">
        <div class="row">
            

            <div class="col-md-9">
                <div class="card">
                    <div class="card-header">Mata Kuliah {{ $matakuliah->id }}</div>
                    <div class="card-body">

                        <a href="{{ url('/admin/matakuliah') }}" title="Back"><button class="btn btn-warning btn-sm"><i class="fa fa-arrow-left" aria-hidden="true"></i> Back</button></a>
                        <a href="{{ url('/admin/matakuliah/' . $matakuliah->id . '/edit') }}" title="Edit matakuliah"><button class="btn btn-primary btn-sm"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Edit</button></a>

                        <form method="POST" action="{{ url('admin/matakuliah' . '/' . $matakuliah->id) }}" accept-charset="UTF-8" style="display:inline">
                            {{ method_field('DELETE') }}
                            {{ csrf_field() }}
                            <button type="submit" class="btn btn-danger btn-sm" title="Delete matakuliah" onclick="return confirm(&quot;Confirm delete?&quot;)"><i class="fa fa-trash-o" aria-hidden="true"></i> Delete</button>
                        </form>
                        <br/>
                        <br/>

                        <div class="table-responsive">
                            <table class="table">
                                <tbody>
                                    <tr><th> Kode Matakuliah </th><td> {{ $matakuliah->kode_matakuliah }} </td></tr><tr><th> Nama Matakuliah </th><td> {{ $matakuliah->nama_matakuliah }} </td></tr><tr><th> SKS </th><td> {{ $matakuliah->sks }} </td></tr>
                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
