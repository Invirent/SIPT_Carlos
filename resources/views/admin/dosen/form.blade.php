<div class="form-group {{ $errors->has('nama') ? 'has-error' : ''}}">
    <label for="nama" class="control-label">{{ 'Nama' }}</label>
    <input class="form-control" name="nama" type="text" id="nama" value="{{ isset($dosen->nama) ? $dosen->nama : ''}}" >
    {!! $errors->first('nama', '<p class="help-block">:message</p>') !!}
</div>
<div class="form-group {{ $errors->has('lectureId') ? 'has-error' : ''}}">
    <label for="lectureId" class="control-label">{{ 'Kode Dosen' }}</label>
    <input class="form-control" name="lectureId" type="text" id="lectureId" value="{{ isset($dosen->lectureId) ? $dosen->lectureId : ''}}" >
    {!! $errors->first('lectureId', '<p class="help-block">:message</p>') !!}
</div>
<div class="form-group {{ $errors->has('tahunMasuk') ? 'has-error' : ''}}">
    <label for="tahunMasuk" class="control-label">{{ 'Tahun Masuk' }}</label>
    <input class="form-control" name="tahunMasuk" type="number" id="tahunMasuk" value="{{ isset($dosen->tahunMasuk) ? $dosen->tahunMasuk : ''}}" >
    {!! $errors->first('tahunMasuk', '<p class="help-block">:message</p>') !!}
</div>
<div class="form-group {{ $errors->has('jurusan') ? 'has-error' : ''}}">
    <label for="jurusan" class="control-label">{{ 'Jurusan' }}</label>
    <input class="form-control" name="jurusan" type="text" id="jurusan" value="{{ isset($dosen->jurusan) ? $dosen->jurusan : ''}}" >
    {!! $errors->first('jurusan', '<p class="help-block">:message</p>') !!}
</div>


<div class="form-group">
    <input class="btn btn-primary" type="submit" value="{{ $formMode === 'edit' ? 'Update' : 'Create' }}">
</div>
