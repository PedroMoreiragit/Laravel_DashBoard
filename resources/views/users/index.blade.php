@extends('layouts.default')

@section('page-title', 'Usuários')

@section('content')

@section('page-action')
    <a href="{{ route('users.create') }}" class="btn btn-primary">Adicionar Usuário</a>
@endsection

@session('status')
    <div class="alert alert-success">
        {{ $value }}
    </div>
@endsession



<form method="GET" action="{{ route('users.index') }}" class="mb-3">
    <div class="input-group input-group-sm" style="width: 300px;">
        <input class="form-control" name="keyword" placeholder="Pesquise por nome ou por e-mail"
            value="{{ request()?->keyword }}">
        <button type="submit" class="btn btn-primary">Pesquisar</button>
    </div>
</form>

<table class="table">
    <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Name</th>
            <th scope="col">E-mail</th>
            <th scope="col">Action</th>
        </tr>
    </thead>
    <tbody>

        @foreach ($users as $user)
            <tr>
                <th scope="row">{{ $user->id }}</th>
                <td>{{ $user->name }}</td>
                <td>{{ $user->email }}</td>
                <td>
                    <div class="d-flex align-items-center">
                        @can('edit', \App\Models\User::class)
                        <a href="{{ route('users.edit', $user->id) }}" class="btn btn-primary btn-sm m-1">Editar</a>
                        @endcan

                        @can('destroy', \App\Models\User::class)
                        <form method="POST" action="{{ route('users.destroy', $user->id) }}">
                            @csrf
                            @method('DELETE')
                            <button class="btn btn-danger btn-sm " type="submit">Excluir</button>
                        </form>
                        @endcan

                    </div>
                </td>
            </tr>
        @endforeach

    </tbody>
</table>

{{ $users->links() }}
@endsection
