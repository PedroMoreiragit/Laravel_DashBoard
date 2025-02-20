@extends('layouts.default')

@section('page-title', 'Adicionar usuário')

@section('content')
    @session('status')
    <div class="alert alert-success">
        {{$value}}
    </div>
    @endsession

    @include('users.parts.roles')
    @include('users.parts.basic-details')
    <br>
    @include('users.parts.profile')
    @include('users.parts.interests')
@endsection
