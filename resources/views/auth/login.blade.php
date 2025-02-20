@extends('layouts.auth')

@section('body-class', 'login-page')


@section('content')
    <div class="login-box">
        <div class="login-logo">
            <a href="{{route('login')}}">
                <img src="{{ Vite::asset('resources\images\AdminLTEFullLogo.png') }} " alt="">
            </a>
        </div>
        <div class="card">
            <div class="card-body login-card-body">
                <p class="login-box-msg">Sign in to start your session</p>

                @session('status')
                    <div class="alert alert-success" role="alert">
                        {{ $value }}
                    </div>
                @endsession

                <form action="{{ route('login.store') }}" method="post">
                    @csrf
                    <div class="input-group mb-3">
                        <div class="input-group-text"><span class="bi bi-envelope"></span></div>
                        <input type="email" class="form-control @error('email') is-invalid @enderror" placeholder="Email"
                            name="email" value="{{ old('email') }}" />
                        @error('email')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-text"><span class="bi bi-lock-fill"></span></div>
                        <input type="password" class="form-control @error('password') is-invalid @enderror"
                            placeholder="Password" name="password" />
                        @error('password')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="d-grid gap-2">
                        <button type="submit" class="btn btn-primary">Login</button>
                    </div>
            </div>
            </form>
            <div class="mt-2 text-center mb-5">
                <p class="mb-1"><a href="{{route('password.request')}}">I forgot my password</a></p>
                <p class="mb-0">
                    <a href="{{route('register')}}" class="text-center"> Register a new membership </a>
                </p>
            </div>
        </div>
    </div>
@endsection
