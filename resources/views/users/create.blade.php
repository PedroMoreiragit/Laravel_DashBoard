@extends('layouts.default')

@section('page-title', 'Adicionar usuário')

@section('content')
    <form action="{{ route('users.store') }}" method="POST" class="w-50 p-3">
        @csrf

        <div class="mb-3">
            <label class="form-label">Name</label>
            <input value="{{ old('name') }}" type="text" class="form-control @error('name') is-invalid @enderror"
                name="name">

            @error('name')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
            @enderror
        </div>

        <div class="mb-3">
            <label class="form-label">E-mail</label>
            <input value="{{ old('email') }}" type="email" class="form-control @error('email') is-invalid @enderror"
                name="email">

            @error('email')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
            @enderror
        </div>

        <div class="mb-3">
            <label class="form-label">Senha</label>
            <input type="password" class="form-control @error('password') is-invalid @enderror" name="password">

            @error('password')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
            @enderror
        </div>


        <a class="btn btn-secondary" href="{{ route('users.index') }}">Voltar</a>
        <button type="submit" class="btn btn-primary text-end">Adicionar</button>

    </form>
@endsection
